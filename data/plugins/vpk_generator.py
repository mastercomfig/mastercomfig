global custom_generators
global interps
global detail_prop_none_defined
global cheap_water_none_defined
global interp_string
global comfig_aliases
global override_aliases

global make_cfg_dir
global base_dir

custom_generators = {}

interps = {}

defined_detail_prop = []
defined_cheap_water = []

interp_string = ""

comfig_aliases = ""

override_aliases = ["detail_props_override", "cheap_water_override"]

base_dir = "config/mastercomfig/"


def make_cfg_dir():
    os.makedirs(base_dir, exist_ok=True)
    os.makedirs(base_dir + 'cfg', exist_ok=True)


def custom_generator(func):
    custom_generators[func.__name__] = func


@custom_generator
def interp_ratio(level, value):
    interps[level] = value
    return "interp_" + level, None


@custom_generator
def update_rate(level, value):
    update_rate_aliases = ""
    interps_string = "alias packet_rate_" + level + "_interps \""
    for name, ratio in interps.items():
        update_rate_aliases += "alias interp_" + level + "_" + name + " \"" + "cl_interp " \
                               + str(float(str(ratio / value)[:9])) + "\"\n"
        interps_string += "alias interp_" + name + " " + "interp_" + level + "_" + name + ";"
    interps_string = interps_string[:-1]
    interps_string += "\"\n"
    aliases = update_rate_aliases + interps_string
    return "packet_rate_" + level + "_interps", aliases


@custom_generator
def detail_props(level, value):
    global defined_detail_prop

    detail_prop_fades = {'high': (900, 0),
                         'ultra': (1200, 400)}

    detail_props_override = "detail_props_" + value
    detail_props_alias = None
    detail_props_addition = detail_props_override + ";alias detail_props_override " + detail_props_override
    if value == "none":
        detail_props_addition = None
    elif value not in defined_detail_prop:
        detail_props_alias = "alias {0} \"cl_detaildist {1[0]};cl_detailfade {1[1]}\"\n"\
            .format(detail_props_override, detail_prop_fades.get(value))
        defined_detail_prop.append(value)
    return detail_props_addition, detail_props_alias


@custom_generator
def cheap_water(level, value):
    global defined_cheap_water

    cheap_water_vals = {'minimal': (150, 750),
                        'partial': (0, 150),
                        'full': (0, 0.1),
                        'off': (1000, 2000)}

    cheap_water_override = "cheap_water_" + value
    cheap_water_alias = None
    if value not in defined_cheap_water:
        cheap_water_alias = "alias {0} \"r_cheapwaterstart {1[0]};r_cheapwaterend {1[1]}\"\n" \
            .format(cheap_water_override, cheap_water_vals.get(value))
        defined_cheap_water.append(value)
    return cheap_water_override + ";alias cheap_water_override " + cheap_water_override, cheap_water_alias


global dxsupport_kv

dxsupport_kv = {}


@custom_generator
def dxsupport(level, value):
    kv = value.split("-")

    if dxsupport_kv.get(kv[0]):
        try:
            dxsupport_kv[kv[0]].index(kv[1])
        except ValueError:
            dxsupport_kv[kv[0]].append(kv[1])
    else:
        dxsupport_kv[kv[0]] = [kv[1]]


@finalizer
def dxsupport_finalizer():
    dxsupport_cats = []

    for key, value in dxsupport_kv.items():
        new_values = []
        for level in value:
            new_values.append(key + "-" + level)
        dxsupport_cats.append(new_values)

    for combo in list(itertools.product(*dxsupport_cats)):
        folder_name = "+".join(combo)
        os.makedirs("config/" + folder_name, exist_ok=True)


@generator(manifest='modules')
def modules_run_file(manifest):
    global interp_string

    make_cfg_dir()
    with open(base_dir + 'cfg/modules-run.cfg', 'w+') as modules:
        for module in manifest.get('modules', {}).keys():
            if manifest.get('modules', {})[module].get('no-data', False):
                continue
            if module != "networking.packet_buffer":
                name_parts = module.split(".")
                name_parts[0] = name_parts[0][0]
                module = "_".join(name_parts)
                modules.write("run_" + module + "\n")
            if module == "n_packet_rate":
                modules.write("run_n_packet_buffer\n")


@generator(manifest='modules')
def modules_define_file(manifest):
    global interp_string

    make_cfg_dir()
    with open(base_dir + 'cfg/modules-define.cfg', "w+") as modules:
        manifest_modules = manifest.get('modules', {})
        for module in manifest_modules.keys():
            if manifest_modules[module].get('no-data', False):
                continue
            name_parts = module.split(".")
            name_parts[0] = name_parts[0][0]
            module_name = "_".join(name_parts)
            module_levels = manifest_modules.get(module, {}).get('levels', {})
            for level in module_levels.keys():
                level_string = ""
                alias_name = module_name + "_" + level
                alias_string = ""
                for cvar, value in module_levels.get(level, {}).get('values', {}).items():
                    if alias_string:
                        alias_string += ";" + cvar + " " + value.__str__()
                    else:
                        alias_string = cvar + " " + value.__str__()
                for entry, value in module_levels.get(level, {}).items():
                    if custom_generators.get(entry):
                        ret = custom_generators[entry](level, value)
                        if ret is not None:
                            if ret[0] is not None:
                                alias_string += ";" + ret[0]
                            if ret[1] is not None:
                                level_string += ret[1]
                level_string += "alias " + alias_name + " \"" + alias_string + "\"""\n"
                modules.write(level_string)


@generator(manifest='modules')
def modules_help_file(manifest):
    global comfig_aliases

    make_cfg_dir()
    with open(base_dir + 'cfg/modules-help.cfg', "w+") as modules_help:
        comfig_aliases += "alias modules_help \"exec modules-help\"\n"
        manifest_modules = manifest.get('modules', {})
        for module in manifest_modules.keys():
            if manifest_modules.get(module, {}).get('hidden') or manifest_modules[module].get('no-data', False):
                continue
            if manifest_modules.get(module, {}).get('name'):
                friendly_name = manifest_modules.get(module, {}).get('name')
            else:
                words = module.split(".")
                for i, word in enumerate(words):
                    in_words = word.split("_")
                    for j, in_word in enumerate(in_words):
                        if not word.isupper():
                            in_words[j] = in_word.title()
                    words[i] = " ".join(in_words)
                friendly_name = ": ".join(words)

            name_parts = module.split(".")
            name_parts[0] = name_parts[0][0]
            module_name = "_".join(name_parts)
            modules_help.write("echo \"~~" + friendly_name + " (" + module_name + ")~~\"\n"
                               + module_name + "\n")
            if manifest_modules.get(module, {}).get('description'):
                modules_help.write("echo \"" + manifest_modules.get(module, {}).get('description') + "\"\n")
            modules_help.write("echo \"\"\n")
            module_levels = manifest_modules.get(module, {}).get('levels', {})
            for level in module_levels.keys():
                level_name = module_levels.get(level, {}).get('name', "")
                if level_name:
                    level_name += " (" + module_name + "_" + level + ")"
                else:
                    level_name = module_name + "_" + level
                if module_levels.get(level, {}).get('description'):
                    modules_help.write("echo \"* " + level_name + ": "
                                       + module_levels.get(level, {}).get('description') + "\"\n")
                else:
                    modules_help.write("echo \"* " + level_name + "\"\n")
            modules_help.write("echo \"\"\necho \"\"\n\n\n")


@generator()
def class_files():
    make_cfg_dir()
    global comfig_aliases
    classes = ['scout', 'soldier', 'pyro', 'demoman', 'heavyweapons', 'engineer', 'medic', 'sniper', 'spy']
    for clas in classes:
        with open(base_dir + 'cfg/' + clas + '.cfg', "w+") as class_file:
            class_file.write("exec game_overrides\n"
                             "class_config_" + clas + "\n")
            comfig_aliases += "alias class_config_" + clas + " \"exec " + clas + "_c;exec overrides/" + clas + "\"\n"


@generator(manifest='presets')
def presets_files(manifest):
    manifest_presets = manifest.get('presets', {})
    with open(base_dir + 'cfg/modules-define.cfg', "a+") as modules_define:
        for preset in manifest_presets.keys():
            alias_string = "alias preset_" + preset + " \""
            os.makedirs(base_dir + 'cfg/presets/', exist_ok=True)
            with open(base_dir + 'cfg/presets/' + preset + '.cfg', "w+") as preset_file:
                modules = manifest_presets.get(preset, {}).get('modules', {})
                for module in modules.keys():
                    name_parts = module.split(".")
                    name_parts[0] = name_parts[0][0]
                    module_name = "_".join(name_parts)
                    level = modules.get(module)
                    preset_file.write("alias run_" + module_name + " " + module_name + "_" + level + "\n")
            alias_string += ";exec presets/" + preset
            alias_string += "\"\n"
            modules_define.write(alias_string)


@generator(manifest='comfig')
def comfig_file(manifest):
    global comfig_aliases

    make_cfg_dir()
    manifest_comfig = manifest.get('entries', {})
    comfig_aliases += "alias game_overrides \"" + ";".join(override_aliases) + "\"\n"
    comfig_aliases += "alias app_modules \"exec app/profiles/default/modules\""
    comfig_aliases += "alias app_custom \"exec app/profiles/default/custom\""
    with open(base_dir + 'cfg/comfig.cfg', "w+") as comfig:
        for cvar, value in manifest_comfig.items():
            if value.__str__():
                comfig.write(cvar + " " + value.__str__() + "\n")
            else:
                comfig.write(cvar + "\n")
        comfig.write(comfig_aliases)


@generator(data=('sources-dir', 'build-dir'))
def sources_copy(*args):
    # copy static sources to build
    copy_tree(args[0], args[1] + base_dir)


@generator(data=('version', 'sources-dir'))
def comfig_format(*args):
    make_cfg_dir()
    source_config_files = []
    for config in os.listdir(args[1] + "cfg"):
        if config != "autoexec.cfg":
            source_config_files.append(config)
    with open(base_dir + 'cfg/comfig.cfg', "a+") as comfig:
        for config_file in source_config_files:
            name = os.path.splitext(config_file)[0]
            comfig.write("alias " + name + " \"exec overrides/" + name +
                         ";exec " + name + "_c\n")
        comfig.write("alias mm_override \"exec mm_overide\"")
        space_padding = range(0, 4)
        for _ in space_padding:
            comfig.write("echo \" \"\n")
        star_padding = range(0, 2)
        left_pad = "  ** "
        right_pad = " **  "
        version_string = left_pad + "mastercomfig " + args[0] + " loaded" + right_pad
        width = len(version_string)
        date = datetime.datetime.utcnow().strftime("%B %d %Y")
        stars = ""
        for _ in range(0, width - 4):
            stars += "*"
        date_string = left_pad
        for _ in range(0, int((width - len(left_pad) * 2 - len(date)) / 2)):
            date_string += " "
        date_string += date
        for _ in range(0, int((width - len(right_pad) * 2 - len(date)) / 2 + 0.5)):
            date_string += " "
        date_string += right_pad
        for _ in star_padding:
            comfig.write("echo \"  " + stars + "  \"\n")
        comfig.write("echo \"" + version_string + "\"\n")
        comfig.write("echo \"" + date_string + "\"\n")
        for _ in star_padding:
            comfig.write("echo \"  " + stars + "  \"\n")
        for _ in space_padding:
            comfig.write("echo \" \"\n")
        comfig.write("alias version_comfig \"echo mastercomfig version: " + args[0] + " | " + date + "\"\n")
