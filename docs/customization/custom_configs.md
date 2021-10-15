---
description: Learn how to do advanced customization and scripting with mastercomfig.
...

# Customization

You can use user customization files to override specific settings in mastercomfig.

These are `autoexec.cfg`, which runs at game launch, the 9 class configs
(`scout.cfg`, `soldier.cfg`, `pyro.cfg`, `demoman.cfg`, `heavyweapons.cfg`, `engineer.cfg`,
`medic.cfg`, `sniper.cfg`, and `spy.cfg`) which run on switching to a new class, and `listenserver.cfg`,
which runs when first spawning in a local server.
All of these files go into a folder called `user` you create in `tf/cfg`.

If you don't have these files, you can download the [mastercomfig template](https://github.com/mastercomfig/mastercomfig/releases/latest/download/template.zip) and move the `user` folder to your `tf/cfg/` folder to customize the config.

If there's something you'd like to run for all of your class configs, you can add it to `tf/cfg/user/game_overrides.cfg`.

## Utility Commands

* `run_modules`: Applies modules. Useful for changing module levels in-game, and then applying them all at once.
* `apply_user`: Runs user modules, applies modules and then runs user autoexec. Useful for changing your user preferences in-game.
* `restore_preset`: Restores modules back to preset defaults, without using user settings.
* `restore_config`: Runs all of mastercomfig and user configs again, resetting changes made in-game.
* `version_comfig`: Outputs the version of mastercomfig currently being used.

## Game Overrides

Some modules set something called game overrides, which apply settings that override map or in-game only settings that can't be applied at launch.

If you want to override this part of the module, you will have to use their game override alias in `tf/cfg/user/autoexec.cfg`. This is comprised of
a override alias, which is run during game overrides, and an override option, which actually contains the settings which is run by the override alias.

* `lighting`: Uses `lightmaps_override` to control if lighting is blocky or smoothed out
    * `lightmaps_off`: Makes lighting blocky

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

So, for example, if you are using a lower lighting module, and do not want blocky lighting, you can add `alias lightmaps_override` to your `autoexec.cfg`.

Or, if you are using a lower water module, but do not want to use cheap water, you can add `alias cheap_water_override cheap_water_never`.

## Network Aliases

These aliases are used by mastercomfig to apply network settings per class (as listed below) when using the `snapshot_buffer=auto` module level.

You can run them manually in your class config if you play a subclass, like Demoknight or Huntsman.

You can also re-alias them to use your own network settings.

* `net_projectiles`: Alias for network settings on projectile classes (Soldier, Pyro, Demoman, Medic) (`snapshot_buffer_low`).
* `net_hitscan`: Alias for network settings on hitscan classes (Scout, Heavy, Engineer, Sniper) (`snapshot_buffer_safe`).
* `net_spy`: Alias for network settings on Spy (`snapshot_buffer_low`).

## Changing your preset

mastercomfig supports selecting a preset after download. Add a file to your `user` folder called `pre_comfig.cfg`. In this file, put your desired preset as `preset=preset-name`. Preset names are:

* none
* ultra
* high
* medium-high
* medium
* medium-low
* low
* very-low

You can check the current selected preset by entering `preset_level` into console.

mastercomfig also supports changing a preset while in-game. Note that, with this method, the Anti-Aliasing module wouldn't be changed since it's blocked by mastercomfig to prevent material system reloads.

You can use `change_preset_NAME` (refer to the list above) in the console to apply all the modules of that preset on your game (takes effect immediately). Note that this ignores your custom settings present in `autoexec.cfg` and `modules.cfg`.

## Optional Aliases

!!! warning
    These steps are entirely optional and are only for advanced customization.

You can change the name of your `user/autoexec` using the `autoexec_c` alias and the name of your `user/modules.cfg` using the `modules_c` alias.
This means your user preferences can have multiple different options, sort of like presets, but for your own preferences! Change these aliases
in-game and use the `apply_user` command to apply your new user selections. This can be used for having different quality choices or game configurations for
different scenarios or mood.

You can change the name of your custom class configs using the `class_config_classname` alias.
For example, you can put `alias class_config_heavyweapons"exec user/myheavy.cfg"` in `tf/cfg/user/autoexec.cfg` if you want to use the file `tf/cfg/user/myheavy.cfg` for Heavy.

You can change the name of your custom game overrides config using the `game_overrides_c` alias.
For example, you can put `alias game_overrides_c"exec user/mygameoverrides.cfg"` in `user/autoexec.cfg` if you want to use the file `tf/cfg/user/mygameoverrides.cfg`.

You can change the name of your custom local server config using the `listenserver_c` alias.
For example, you can put `alias listenserver_c"exec user/mylistenserver.cfg"` in `user/autoexec.cfg` if you want to use the file `tf/cfg/user/mylistenserver.cfg`.

You can also get creative and use the aforementioned aliases to change your class config on the fly using binds or the console.
For example, you could have different class configs for Scout in competitive and casual and then change your `class_config_scout` alias to run your preferred class config when you want.

If you want to run something only the first time you spawn and never run again while you keep the game open use the `game_overrides_once_c` alias.

## Advanced Customization

When diving deep into customization the core of mastercomfig, you may find it useful to run things directly before and after mastercomfig's `comfig.cfg`, which provides core functionality and aliases.

You can use `user/pre_comfig.cfg` to run things before `comfig.cfg`, and `user/post_comfig.cfg` to run things after `comfig.cfg`.

Examples of `user/pre_comfig.cfg` uses can be things like customizing your preset like detailed above, or turning on debugging options to monitor the launch process of mastercomfig itself.

Uses of `user/post_comfig.cfg` are rarer, but still valid. With this, you can directly override all aliases defined in mastercomfig's core. This can be used for changing the default modules file, making your own modules or module levels, or customizing the built-in ones, and more!

## Multiple autoexec.cfg and modules.cfg (apply_user)

You can have multiples `autoexec.cfg` and `modules.cfg` files if you alias `modules_c` and `autoexec_c` before running them, and then using `apply_user`.

`apply_user` is `modules_c;run_modules;autoexec_c` (applies custom modules, runs all modules, and executes custom autoexec).

For example, let's say this is what you use:

`autoexec.cfg` (original):
```
bind g "taunt;say ez"
```

`modules.cfg` (original):
```
lighting=ultra
ragdolls=high
```

If you want to use multiples `autoexec.cfg` and `modules.cfg`, you would need to alias `autoexec_c` and `modules_c` for each of them.
So, let's say you want to use your original `autoexec.cfg` and `modules.cfg`, but at the same time, you also want an alternative `autoexec.cfg` and an alternative `modules.cfg` to taunt and say `too easy`, disable ragdolls and use low lighting settings.
You would create new files, and for example, let's say you want to call them `autoexec_alt.cfg` and `modules_alt.cfg`. You wold grab these new files and put them in the `tf/cfg/user` folder.
Then, to use your alternative configuration, you would need to do something like this:

`autoexec.cfg` (original modified):
```
alias autoexec_c"exec user/autoexec_alt.cfg"
alias modules_c"exec user/modules_alt.cfg"

bind g "taunt;say ez"
```

`autoexec_alt.cfg` (alternative autoexec):
```
alias autoexec_c"exec user/autoexec.cfg"
alias modules_c"exec user/modules.cfg"

bind g "taunt;say too easy"
```

`modules_alt.cfg` (alternative modules):
```
lighting=low
ragdolls=off
```

What you have done here is: you created two new files inside `tf/cfg/user` and aliased `autoexec_c` and `modules_c` to change your settings just by using `apply_user`, since you created a loop: whenever `autoexec.cfg` is executed (at game launch), `autoexec_c` and `modules_c` will be aliased to execute the alternative configuration.
And, whenever the alternative configuration is executed, it aliases `autoexec_c` and `modules_c` to execute the original configuration. That is, `apply_user` becomes a loop and you can change your configuration at any time.
You can also use more than two configurations. You can make ten files and even more. The important thing to do is to correct alias `autoexec_c` and `modules_c` in each of them.

## Optional User Config Template

!!! warning
    These steps are entirely optional and are only for advanced customization.

To get an idea about what to put in your `user/autoexec.cfg` and select options,
you can download the autoexec template from the [latest release](https://github.com/mastercomfig/mastercomfig/releases/latest).

This config is only for advanced, fine-tuned customization and is completely optional. Modules are recommended to be used for granular customization.

## Debug Commands

This is a set of handy debugging commands used during mastercomfig's development to analyze several aspects of the game.

### General

* `developer -1`: Display console output in the corner of the screen without showing additional information.
* `developer 1`: Enable developer only output level 1. Shows various warnings about potential issues, and outputs console to the corner of the screen.
* `developer 2`: Enable developer only output level 2, which displays more information.

### Gameplay Testing

* `sv_cheats 1;mp_disable_respawn_times 1;spec_freeze_time 0;spec_freeze_traveltime .01;mp_respawnwavetime 0`: Turns on fully instant respawn.
* `sv_cheats 1;buddha`: Toggles buddha mode (health cannot go below 1).
* `tf_bot_kick all;tf_bot_quota_mode normal;tf_bot_difficulty 3;tf_bot_quota 32`: Fills the server with bots with AI.
* `sv_cheats 1;bot -targetdummy`: Adds a target bot, which can be damaged infinitely.

### Rendering

* `sv_cheats 1;r_visocclusion 1;r_occlusionspew 1`: Turns on debugging of the occlusion system.
* `r_drawpixelvisibility 1;r_pixelvisibility_spew 1`: Turns on debugging of the pixel visibility system.
* `sv_cheats 1;mat_fillrate 1`: Shows overdraw from repeated passes.
* `toggle mat_aaquality`: Reloads the material system.

### Sound

* `snd_async_showmem;snd_async_spew 1;snd_async_spew_blocking 2;snd_async_stream_spew 2`: Dumps the current state of the sound memory pool, and enables debug output for sound loads.
* `sv_cheats 1;snd_showstart 2;adsp_debug 6`: Enables debug output of DSP parameters of sounds, and enables visualization for automatic room DSP, if it is enabled.

### Network

* `net_showudp 1`: Enables spew of each network packet sent and received, including compression information if relevant.
* `net_showdrop 1`: Enables debug output of outdated or duplicate packets.
* `net_graph 4`: Enables the full networking graph, which displays information about packet volume, interp timings, and packet rates.
* `cl_showerror 2`: Enables network prediction error logging.

### FPS

* `net_graph 1`: Enables the basic networking graph, which is handy for seeing FPS. Note that the graph has a noticeable performance impact.
* `cl_showfps 2`: Enables full FPS counter, which shows absolute FPS mins and maxes. You can disable and enable this command to reset the mins and maxes.

### Profiling

* `vprof_off;vprof_reset;con_logfile vprof_spike.log;vprof_dump_oninterval 0;vprof_report_oninterval 0;vprof_dump_spikes 100;vprof_on`: Logs spikes below 100 FPS (can be adjusted by changing the value of `vprof_dump_spikes`) to `tf/vprof_spikes.log` (can be adjusted by changing the value of `con_logfile`).
* `vprof_off;vprof_reset;con_logfile vprof.log;vprof_dump_oninterval 10;vprof_report_oninterval 0;vprof_dump_spikes 0;vprof_on`: Logs profiling data to `tf/vprof.log` (can be adjusted by changing the value of `con_logfile`). Can be re-run to reset timings data.
* `vprof_off;vprof_reset;con_logfile vprof.log;vprof_dump_oninterval 0;vprof_report_oninterval 10;vprof_dump_spikes 0;vprof_on`: Logs a longer set of inclusive profiling data to `tf/vprof.log` (can be adjusted by changing the value of `con_logfile`). Can be re-run to reset timings data.
* `vprof_off;vprof_reset;con_logfile "";vprof_dump_oninterval 0;vprof_report_oninterval 0;vprof_dump_spikes 0`: Turns off profiling.
