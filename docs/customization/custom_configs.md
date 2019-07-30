# Customization

Mastercomfig overrides configs in `tf/cfg`. You'll have to move them to a new folder in `tf/cfg` called `user`.

So, if you already have an `autoexec.cfg`, just move it to `tf/cfg/user/`. Make sure you don't have a pre-existing
full blown config like Comanglia's or Chris' config or some network config in your `autoexec.cfg`, as that will
conflict with mastercomfig.

If you don't have an `autoexec.cfg`, you can create a `autoexec.cfg` in your `tf/cfg/user/` folder to override any settings in the config.

If you have any class configs, you will have also have to move them to the `tf/cfg/user` folder.
You can change the name of your custom class configs using the `class_config_classname` alias.
For example, you can put `alias class_config_heavyweapons "exec myheavy"` in `tf/cfg/user/autoexec.cfg` if you want to use a file named `myheavy.cfg` for Heavy.

If there's something you'd like to run for all of your class configs, you can add it to `user/game_overrides.cfg`.
You can change the name of your custom game overrides config using the `game_overrides_c` alias.
For example, you can put `alias game_overrides_c "exec mygameoverrides"` in `user/autoexec.cfg` if you want to use the file `tf/cfg/mygameoverrides.cfg`.

If you have a `listenserver.cfg`, you will have to move it to `user/`. Or create one, if you'd like to execute stuff on local servers.
You can change the name of your custom listen server config using the `listenserver_c` alias.
For example, you can put `alias listenserver_c "exec mylistenserver"` in `user/autoexec.cfg` if you want to use a file named `mylistenserver.cfg`.

You can also get creative and use the aforementioned aliases to change your class config on the fly using binds or the console.
For example, you could have different class configs for Scout in competitive and casual and then change your `class_config_scout` alias to run your preferred class config when you want.

If you want to run something only the first time you spawn and never run again while you keep the game open use the `game_override_once_c` alias.
