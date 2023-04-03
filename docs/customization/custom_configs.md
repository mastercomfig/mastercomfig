---
description: Learn how to do advanced customization and scripting with mastercomfig.
search:
  boost: 1
...

<div style="background: linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:1rem" class="md-typeset"><div><div style="display: flex;align-items: center;">
    <div>
        <a href="https://tradeit.gg/?aff=comfig">
            <img style="height:8rem;width:8rem;aspect-ratio:1/1;display: inline-block;" alt="tradeit.gg logo" src="https://mastercomfig.com/img/third_party/tradeit.webp" width="128" height="128">
        </a>
    </div>
    <div style="margin-left: 0.5rem;">
        <a href="https://tradeit.gg/?aff=comfig">
            <p style="color:#fff">
                <strong>Trade, buy or sell items</strong><br>
                Trade items instantly for real money with the lowest fees.<br>
                Fully automated. Over 45 million successful trades.
            </p>
        </a>
    </div>
</div>

# Customization

You can use user override files to customize specific settings in mastercomfig:

* `autoexec.cfg`, which runs at game launch
* Class configs (`scout.cfg`, `soldier.cfg`, `pyro.cfg`, `demoman.cfg`, `heavyweapons.cfg`, `engineer.cfg`,
`medic.cfg`, `sniper.cfg`, and `spy.cfg`) which run on switching to a new class
* `listenserver.cfg` which runs when first spawning in a local server

All of these files go into a folder called `overrides` you create in `tf/cfg`.

If you don't have these files, you can download the [mastercomfig template](https://github.com/mastercomfig/mastercomfig/releases/latest/download/template.zip) and move the `overrides` folder to your `tf/cfg/` folder to customize the config.

If there's something you'd like to run for all of your class configs, you can add it to `tf/cfg/overrides/game_overrides.cfg`.

## Utility Commands

* `run_modules`: Applies modules. Useful for changing module levels in-game and then applying them all at once.
* `apply_overrides`: Runs user modules, applies modules, and then runs user autoexec. Useful for changing your user overrides in-game.
* `restore_preset`: Restores modules to preset defaults without using user overrides.
* `restore_config`: Runs all of mastercomfig, and user overrides again, resetting changes made in-game.
* `version_comfig`: Outputs the version of mastercomfig currently being used.
* `switchconsole`: Command for toggling console and console output, reducing the performance impact of the console when toggled off.

## Game Overrides

Some modules set something called game overrides, which apply settings that override map or in-game only settings that the config can't apply at launch.

If you want to override this part of the module, you must use their game override alias in `tf/cfg/overrides/autoexec.cfg`. This comprises of an override alias, ran during game overrides, and an override option, which has the settings ran by the override alias.

* `shadows`: Uses `shadowlod_override` to control the model quality shadows render with
    * `shadowlod_low`: Uses the lowest model quality to render shadows
    * `shadowlod_high`: Uses the highest model quality (at root LOD) to render shadows

* `water`: Uses `cheap_water_override` to control the low quality water fade distance
    * `cheap_water_full`: Always uses fully cheap water
    * `cheap_water_partial`: Always uses partially cheap water, uses fully cheap water at a short distance
    * `cheap_water_minimal`: Uses partially cheap water at a short distance, uses fully cheap water at a further distance
    * `cheap_water_never`: Never uses any kind of cheap water

* `props`: Uses `detail_props_override` to control grass/detail prop rendering and its render distance
    * `detail_props_none`: Disables detail props
    * `detail_props_medium`: Enables detail props, at a far distance, with no fade in
    * `detail_props_full`: Enables detail props, at a far distance, with a gentle fade in

As an example, if you are using a lower water module, but do not want to use cheap water, you can add `alias cheap_water_override cheap_water_never`.

## Network Aliases

mastercomfig uses these aliases to apply network settings per class (as listed below) when using the `snapshot_buffer=auto` module level.

You can run them manually in your class config if you play a subclass, like Demoknight (`net_hitscan`) or Huntsman (`net_projectiles`).

You can also re-alias them to use entirely custom network settings.

* `net_projectiles`: Alias for network settings on projectile classes (Soldier, Pyro, Demoman, Medic) (`snapshot_buffer_low`).
* `net_hitscan`: Alias for network settings on hitscan classes (Scout, Heavy, Engineer, Sniper) (`snapshot_buffer_safe`).
* `net_spy`: Alias for network settings on Spy (`snapshot_buffer_safe`).

## Changing your preset

mastercomfig supports selecting a preset after download. Add a file to your `overrides` folder called `pre_comfig.cfg`. In this file, put your desired preset as `preset=preset-name`. Preset names are:

* none
* ultra
* high
* medium-high
* medium
* medium-low
* low
* very-low

You can check the currently selected preset by entering `preset_level` into the console.

## Optional Aliases

!!! warning
    Optional aliases are **entirely optional** and are **only** for **advanced** customization.

Your override preferences can have multiple options, sort of like presets! You can use this to have different quality choices or game configurations for different scenarios or moods.

You can change the name of your `overrides/modules.cfg` using the `modules_c` alias. Change these aliases in-game and use the `apply_overrides` command to apply your new user overrides.

You can change the name of your custom class configs using the `class_config_classname` alias.
For example, you can put `alias class_config_heavyweapons"exec overrides/myheavy.cfg"` in `tf/cfg/overrides/autoexec.cfg` if you want to use the file `tf/cfg/overrides/myheavy.cfg` for Heavy.

You can change the name of your custom game overrides config using the `game_overrides_c` alias.
For example, you can put `alias game_overrides_c"exec overrides/mygameoverrides.cfg"` in `overrides/autoexec.cfg` if you want to use the file `tf/cfg/overrides/mygameoverrides.cfg`.

You can also get creative and use the aliases above to change your class config on the fly using binds or the console.
For example, you could have different class configs for Scout in competitive and casual and then change your `class_config_scout` alias to run your preferred class config when you want.

If you want to run something only the first time you spawn and never run again while you keep the game open, use the `game_overrides_once_c` alias.

## Advanced Customization

When diving deep into customization of the core of mastercomfig, you may find it useful to run things directly before and after mastercomfig's `comfig.cfg`, which provides core functionality and aliases.

You can use `overrides/pre_comfig.cfg` to run things before `comfig.cfg`, and `overrides/setup_hook.cfg` to run things after `comfig.cfg`.

Examples of `overrides/pre_comfig.cfg` uses can be things like customizing your preset detailed above or turning on debugging options to monitor the launch process of mastercomfig itself (ex: `sv_cheats 1;mat_debugalttab 1`).

Uses of `overrides/setup_hook.cfg` are rarer but still valid. With this, you can directly override all aliases defined in mastercomfig's core. You can use this to change the default modules file, make your own modules or module levels, customize the built-in ones, and more!

## Optional User Config Template

!!! warning
    These steps are entirely optional and are only for advanced customization.

To get an idea about what to put in your `overrides/autoexec.cfg` and select options,
you can download the autoexec template from the [latest release](https://github.com/mastercomfig/mastercomfig/releases/latest).

This config is only for advanced, fine-tuned customization and is completely optional. You should use modules for granular customization.

## Debug Commands

mastercomfig provides a set of handy debugging commands used during mastercomfig's development to analyze several aspects of the game.

### General

* `debug_output`: Enable developer-only output (`debug_output_1`). It shows various warnings about potential issues and outputs console output to the corner of the screen.
* `debug_output_toggle`: Cycle through all four modes (including disabled) for developer-only output. Different modes display different amounts of information.
* `debug_output_display`: Display console output in the corner of the screen without showing additional information.
* `debug_output_1`: Enable developer-only output level 1.
* `debug_output_2`: Enable developer-only output level 2, which displays more information.

### Gameplay Testing

* `debug_instant_respawn`: Turns on fully instant respawn.
* `debug_invulnerable`: Toggles buddha mode (health cannot go below 1).
* `debug_bots`: Fills the server with bots with AI.
* `debug_target`: Adds a target bot, which can be damaged infinitely.

### Rendering

* `debug_occlusion`: Turns on debugging of the occlusion system.
* `debug_pixelvis`: Turns on debugging of the pixel visibility system.
* `debug_fillrate`: Shows overdraw from repeated passes.
* `debug_matsys_reload`: Reloads material system.

### Sound

* `debug_sound_loads`: Dumps the current state of the sound memory pool and enables debug output for sound loads.
* `debug_sound_dsp`: Enables debug output of DSP parameters of sounds and enables visualization for automatic room DSP.

### Network
* `debug_network_packets`: Enables spew of each network packet sent and received, including compression information if relevant.
* `debug_network_drops`: Enables debug output of outdated or duplicate packets.
* `debug_network_graph`: Enables the full networking graph, which displays information about packet volume, interp timings, and packet rates.
* `debug_network_pred`: Enables network prediction error logging.

### FPS

* `debug_fps`: Enables the basic networking graph, which is handy for seeing FPS. Note that the graph has a noticeable performance impact.
* `debug_fps_range`: Enables full FPS counter, which shows absolute FPS mins and maxes. You can re-run this command to reset the mins and maxes.

### Profiling

* `debug_vprof_spikes`: Logs spikes below 100FPS (can be adjusted with `alias debug_vprof_spike"vprof_dump_spikes 100"`) to `tf/vprof_spikes.log` (can be adjusted with `alias debug_vprof_log_spike"con_logfile vprof_spike.log"`).
* `debug_vprof_dump`: Logs profiling data to `tf/vprof.log` (can be adjusted with `alias debug_vprof_log"con_logfile vprof.log"`). It can be re-run to reset timings data.
* `debug_vprof_report`: Logs a longer set of inclusive profiling data to `tf/vprof.log` (can be adjusted with `alias debug_vprof_log"con_logfile vprof.log"`). It can be re-run to reset timings data.
* `debug_vprof_off`: Turns off profiling.
