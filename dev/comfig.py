#!/usr/bin/python
import functools
import json
import os
import subprocess
import sys
import time
import datetime
from distutils.dir_util import copy_tree

global make_cfg_dir
global base_dir

base_dir = "mastercomfig/"


def make_cfg_dir():
    os.makedirs(base_dir, exist_ok=True)
    os.makedirs(base_dir + 'cfg', exist_ok=True)


# get the path to our manifest providers data file
manifest_provider_file_path = sys.argv[1] if len(sys.argv) < 1 else "manifests.json"

manifest_data = {}

generators = []

source_config_files = []


def generator(**kwargs):
    def decorator(func):
        generators.append({
            'callback': func,
            'manifest': kwargs.get('manifest')
        })
        return func

    return decorator


def main():
    # get our original script path
    original_dir = os.path.dirname(os.path.realpath(sys.argv[0])) + "/"
    os.chdir(original_dir)

    # read the file that contains the list of files to read from (providers) for each manifest
    with open(manifest_provider_file_path) as manifest_provider_file:
        manifest_providers = json.load(manifest_provider_file)

    # copy static sources to build
    copy_tree(manifest_providers['sources-dir'], manifest_providers['build-dir'] + base_dir)

    for config in os.listdir(manifest_providers['sources-dir'] + "cfg"):
        if config != "autoexec.cfg":
            source_config_files.append(config)

    # read the config providers relative to the config dir
    os.chdir(original_dir + manifest_providers['config-dir'])
    print("Found {0} manifests: {1}."
          .format(len(manifest_providers.get('manifests').keys()),
                  list(manifest_providers.get('manifests').keys()).__str__()))
    # for each of the manifests we read from
    for manifest in manifest_providers.get('manifests').keys():
        # create an empty dictionary if not present
        if manifest_data.get(manifest) is None:
            manifest_data[manifest] = {}
        # read the manifest providers file for paths to providers
        # for each provider, add its json data to the manifest
        for provider_file_path in manifest_providers.get('manifests')[manifest]:
            start = time.perf_counter()
            with open(provider_file_path) as provider_file:
                # collect providers into one manifest
                j = json.load(provider_file)
                manifest_data[manifest].update(j)
                print("Loaded manifest file with " + len(j.get(list(j.keys())[0])).__str__() + " entries in {0}s."
                      .format(time.perf_counter() - start))

    # run plugins to register their generators
    for file in os.listdir(original_dir + "plugins"):
        # execute python files
        if file.endswith(".py"):
            start = time.perf_counter()
            exec(compile(open(original_dir + "plugins/" + file, "rb").read(), original_dir + "plugins/" + file,
                         'exec'), globals(), locals())
            print("Loaded {0} in {1}s.".format(file, time.perf_counter() - start))
        elif file.endswith(".sh"):
            start = time.perf_counter()
            generator()(functools.partial(subprocess.call, original_dir + "plugins/" + file, shell=True))
            print("Loaded {0} in {1}s.".format(file, time.perf_counter() - start))

    # enter the build directory
    os.makedirs(original_dir + manifest_providers['build-dir'], exist_ok=True)
    os.chdir(original_dir + manifest_providers['build-dir'])

    # run registered generators for their specified manifest
    for gen in generators:
        if gen.get('manifest') is not None and manifest_data.get(gen['manifest']) is not None:
            gen['callback'](manifest_data[gen['manifest']])
        else:
            gen['callback']()

    make_cfg_dir()
    with open(base_dir + 'cfg/comfig.cfg', "a+") as comfig:
        for config_file in source_config_files:
            name = os.path.splitext(config_file)[0] + "_c"
            comfig.write("alias " + name + " \"exec " + name + "\n")
        space_padding = range(0, 4)
        for i in space_padding:
            comfig.write("echo \" \"\n")
        star_padding = range(0, 2)
        left_pad = "  ** "
        right_pad = " **  "
        version_string = left_pad + "mastercomfig " + manifest_providers['version'] + " loaded" + right_pad
        width = len(version_string)
        date = datetime.datetime.utcnow().strftime("%B %d %Y")
        stars = ""
        for i in range(0, width - 4):
            stars += "*"
        date_string = left_pad
        for i in range(0, int(round((width - len(left_pad) * 2 - len(date)) / 2))):
            date_string += " "
        date_string += date
        for i in range(0, int((width - len(left_pad) * 2 - len(date)) / 2)):
            date_string += " "
        date_string += right_pad
        for i in star_padding:
            comfig.write("echo \"  " + stars + "  \"\n")
        comfig.write("echo \"" + version_string + "\"\n")
        comfig.write("echo \"" + date_string + "\"\n")
        for i in star_padding:
            comfig.write("echo \"  " + stars + "  \"\n")
        for i in space_padding:
            comfig.write("echo \" \"\n")


if __name__ == '__main__':
    main()
