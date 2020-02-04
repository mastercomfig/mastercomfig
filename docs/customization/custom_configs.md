# Customization

mastercomfig overrides configs in `tf/cfg`. You'll have to move them to a new folder in `tf/cfg` called `user`. If you don't have this folder, you can make it.

So, if you already have an `autoexec.cfg`, just move it to `tf/cfg/user/`. Make sure you don't have a pre-existing
full blown config like Comanglia's or Chris' config or some network config in your `autoexec.cfg`, as that will conflict with mastercomfig.

If you don't have an `autoexec.cfg`, you can [download a blank one](https://github.com/mastercoms/mastercomfig/releases/latest/download/autoexec.cfg) and move it to your `tf/cfg/user/` folder to override any settings in the config.

If you have any class configs, you will have also have to move them to the `tf/cfg/user` folder.

If there's something you'd like to run for all of your class configs, you can add it to `user/game_overrides.cfg`.

If you have a `listenserver.cfg`, you will have to move it to `user/`. Or create one, if you'd like to execute stuff on local servers.

## Additional Addons

If you would like to distribute or create your own addon, you can create an addon CFG file, and then instruct users to add an exec for it to a `tf/cfg/user/addons.cfg`.

So, for example, if you made an addon which customize the crosshair, you could name it `my-crosshair.cfg`, add it to the `tf/cfg/addons` folder and then add `exec addons/my-crosshair` to `tf/cfg/user/addons.cfg`.

Custom addons run after presets, modules, and built-in mastercomfig addons, but before the user's autoexec.

## Utility Commands

* `run_modules`: Applies modules. Useful for changing module levels in-game, and then applying them all at once.
* `restore_preset`: Restores modules back to preset defaults, without using user settings.
* `restore_config`: Runs all of mastercomfig and user configs again, resetting changes made in-game.
* `version_comfig`: Outputs the version of mastercomfig currently being used.

## Optional Aliases

**Note: These steps are entirely optional and are only for advanced customization.**

You can change the name of your custom class configs using the `class_config_classname` alias.
For example, you can put `alias class_config_heavyweapons "exec user/myheavy"` in `tf/cfg/user/autoexec.cfg` if you want to use the file `tf/cfg/user/myheavy.cfg` for Heavy.

You can change the name of your custom game overrides config using the `game_overrides_c` alias.
For example, you can put `alias game_overrides_c "exec user/mygameoverrides"` in `user/autoexec.cfg` if you want to use the file `tf/cfg/user/mygameoverrides.cfg`.

You can change the name of your custom listen server config using the `listenserver_c` alias.
For example, you can put `alias listenserver_c "exec user/mylistenserver"` in `user/autoexec.cfg` if you want to use the file `user/mylistenserver.cfg`.

You can also get creative and use the aforementioned aliases to change your class config on the fly using binds or the console.
For example, you could have different class configs for Scout in competitive and casual and then change your `class_config_scout` alias to run your preferred class config when you want.

If you want to run something only the first time you spawn and never run again while you keep the game open use the `game_overrides_once_c` alias.

## Optional User Config Template

To get an idea about what to put in your `user/autoexec.cfg` and select options,
you can download the user/autoexec.cfg template from the [latest release](https://github.com/mastercoms/mastercomfig/releases/latest).

This config is only for advanced, fine tuned customization and is completely optional. Modules are recommended to be used for easy customization.
