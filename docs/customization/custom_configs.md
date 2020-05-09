---
description: Learn how to do advanced customization and scripting with mastercomfig.
---

# Customization

You can use user customization files to override specific settings in mastercomfig.

These are `autoexec.cfg`, which runs at game launch, and the 9 class configs
(`scout.cfg`, `soldier.cfg`, `pyro.cfg`, `demoman.cfg`, `heavyweapons.cfg`, `engineer.cfg`,
`medic.cfg`, `sniper.cfg`, and `spy.cfg`) which run on switching to a new class.
All of these files go into a folder called `user` you create in `tf/cfg`.

If you don't have an `autoexec.cfg`, you can [download a blank one](https://github.com/mastercomfig/mastercomfig/releases/latest/download/autoexec.cfg) and move it to your `tf/cfg/user/` folder to override any settings in the config.

If there's something you'd like to run for all of your class configs, you can add it to `tf/cfg/user/game_overrides.cfg`.

## Utility Commands

* `run_modules`: Applies modules. useful for changing module levels in-game, and then applying them all at once.
* `restore_preset`: Restores modules back to preset defaults, without using user settings.
* `restore_config`: Runs all of mastercomfig and user configs again, resetting changes made in-game.
* `version_comfig`: Outputs the version of mastercomfig currently being used.
* `switchconsole`: Command for toggling console and console output. This is able to reduce the performance impact of console logging when the console is not toggled on.

## Network alias

These aliases are used by mastercomfig to apply network settings per class.

You can run them manually in your class config if you play a subclass, like Demoknight or Huntsman.

You can also re-alias them to use your own network settings.

* `net_projectiles`: Alias for network settings on projectile classes (Soldier, Pyro, Demoman, Medic).
* `net_hitscan`: Alias for network settings on hitscan classes (Scout, Heavy, Engineer, Sniper).
* `net_spy`: Alias for network settings on Spy.

## Changing your preset

mastercomfig now supports selecting a preset after download. Add a file to your `user` folder called `pre_comfig.cfg`. In this file, put `alias preset "exec presets/preset_name.cfg"`, where `preset_name` is the name of the preset:

* ultra
* high
* medium-high
* medium
* medium-low
* low
* very-low

## Additional Addons

!!! warning
    These steps are entirely optional and are only for advanced customization.

If you would like to distribute or create your own addon, you can create an addon CFG file, and then instruct users to add an exec for it to a `tf/cfg/user/addons.cfg`.

So, for example, if you made an addon which customized the crosshair, you could name it `my-crosshair.cfg`, add it to the `tf/cfg/addons` folder and then add `exec addons/my-crosshair.cfg` to `tf/cfg/user/addons.cfg`.

Custom addons run after presets, modules, and built-in mastercomfig addons, but before the user's autoexec.

## Optional Aliases

!!! warning
    These steps are entirely optional and are only for advanced customization.

You can change the name of your custom class configs using the `class_config_classname` alias.
For example, you can put `alias class_config_heavyweapons "exec user/myheavy.cfg"` in `tf/cfg/user/autoexec.cfg` if you want to use the file `tf/cfg/user/myheavy.cfg` for Heavy.

You can change the name of your custom game overrides config using the `game_overrides_c` alias.
For example, you can put `alias game_overrides_c "exec user/mygameoverrides.cfg"` in `user/autoexec.cfg` if you want to use the file `tf/cfg/user/mygameoverrides.cfg`.

You can also get creative and use the aforementioned aliases to change your class config on the fly using binds or the console.
For example, you could have different class configs for Scout in competitive and casual and then change your `class_config_scout` alias to run your preferred class config when you want.

If you want to run something only the first time you spawn and never run again while you keep the game open use the `game_overrides_once_c` alias.

## Optional User Config Template

!!! warning
    These steps are entirely optional and are only for advanced customization.

To get an idea about what to put in your `user/autoexec.cfg` and select options,
you can download the user/autoexec.cfg template from the [latest release](https://github.com/mastercomfig/mastercomfig/releases/latest).

This config is only for advanced, fine tuned customization and is completely optional. Modules are recommended to be used for easy customization.
