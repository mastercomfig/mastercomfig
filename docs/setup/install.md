# Install

## 1. Download and install your preset and addons

[Download](https://mastercoms.github.io/mastercomfig/download) the VPK files of your choice from the
site and then drag them **directly** to your `tf/custom` folder. Do not put the VPKs
in a folder inside your `custom` folder, put them in the `custom` folder itself.
You don't have to rename anything either, just drag the files as is into `custom`.
Do not download the source code, and do not download from the `Clone or Download`
button. Only download the VPK files from the
[official site](https://mastercoms.github.io/mastercomfig/download).

The VPK includes everything needed for the config to run, so you don't need to
have an autoexec or run it using anything. If you already have an autoexec,
you'll definitely want to read step 4 for more information on how to migrate
to mastercomfig. **Don't edit the VPK either, step 4 has customization instructions.**

To get to `tf/custom`, right click Team Fortress 2 in your Steam library, click
**Properties**, go to the **Local Files** tab, and then click the
**Browse Local Files...** button. Then in the files app that appears, open the
`tf` folder and then open the `custom` folder.

## 2. Set Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste
`-novid -nojoy -nosteamcontroller -softparticlesdefaultoff -reuse -nohltv` into
the box and click ok.

You will also want to read about optional launch options and choosing a DirectX version [here](https://github.com/mastercoms/mastercomfig/wiki/Launch-Options).

## 3. Custom configs

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

To easily customize settings, you can use [modules](https://github.com/mastercoms/mastercomfig/wiki/Modules).

To do finer customization through individual console variables and commands,
you can look through the [config file on GitHub](https://github.com/mastercoms/mastercomfig/blob/release/config/mastercomfig/cfg/comfig/comfig.cfg) and add your preferences to your `user/autoexec.cfg`.

To get an idea of how to use custom configs, [see what](https://github.com/mastercoms/mastercomfig/wiki/List-of-custom-configs) other people in the community have done.
