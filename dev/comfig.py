#!/usr/bin/python
import json
import os
import sys

manifest_provider_file_path = sys.argv[1]

manifest_data = {}

generators = []


def generator(**kwargs):
    def decorator(func):
        generators.append({
            'callback': func,
            'manifest': kwargs.get('manifest', 'presets')
        })
        return func

    return decorator


def main():
    # read the file that contains the list of files to read from (providers) for each manifest
    with open(manifest_provider_file_path) as manifest_provider_file:
        manifest_providers = json.load(manifest_provider_file)

    original_dir = os.path.dirname(os.path.realpath(sys.argv[0])) + "/"

    os.chdir(original_dir + manifest_providers['config-dir'])

    # for each of the manifests we read from
    for manifest in manifest_providers.get('manifests').keys():
        # create an empty dictionary if not present
        if manifest_data.get(manifest) is None:
            manifest_data[manifest] = {}
        # read the manifest providers file for paths to providers
        # for each provider, add its json data to the manifest
        for provider_file_path in manifest_providers.get('manifests')[manifest]:
            with open(provider_file_path) as provider_file:
                manifest_data[manifest].update(json.load(provider_file))

    for file in os.listdir(original_dir + "plugins"):
        if file.endswith(".py"):
            exec(compile(open(original_dir + "plugins/" + file, "rb").read(), original_dir + "plugins/" + file,
                         'exec'), globals(), locals())

    os.makedirs(original_dir + manifest_providers['build-dir'], exist_ok=True)
    os.chdir(original_dir + manifest_providers['build-dir'])

    for gen in generators:
        if gen.get('manifest') is not None and manifest_data.get(gen['manifest']) is not None:
            gen['callback'](manifest_data[gen['manifest']])


if __name__ == '__main__':
    main()
