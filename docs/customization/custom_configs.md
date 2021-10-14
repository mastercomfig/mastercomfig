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


## Optional User Config Template

!!! warning
    These steps are entirely optional and are only for advanced customization.

To get an idea about what to put in your `user/autoexec.cfg` and select options,
you can download the autoexec template from the [latest release](https://github.com/mastercomfig/mastercomfig/releases/latest).

This config is only for advanced, fine-tuned customization and is completely optional. Modules are recommended to be used for granular customization.
