[![Join the Discord chat](https://img.shields.io/badge/discord-mastercomfig-7289da.svg?style=flat-square&logo=discord)](https://discord.gg/CuPb2zV)
[![Join the Steam Group](https://img.shields.io/badge/steam-mastercomfig-00adee.svg?style=flat-square)](https://steamcommunity.com/groups/comfig)
[![Follow the tf.tv thread](https://img.shields.io/badge/tftv-mastercomfig-4577a1.svg?style=flat-square)](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config)

## Quick Links
* [Installation](https://github.com/mastercoms/mastercomfig/blob/release/docs/README.md#installation)
* [Updating](https://github.com/mastercoms/mastercomfig/blob/release/docs/README.md#updating)
* [Troubleshooting](https://github.com/mastercoms/mastercomfig/blob/release/docs/README.md#troubleshooting)
* [Website](https://mastercoms.github.io/mastercomfig/)
* [Wiki](https://github.com/mastercoms/mastercomfig/wiki)

# mastercomfig

This config is by default for modern PCs and aims to disable heavily unoptimized
features and adjust other settings where it does not affect behavior or visuals
noticeably. However, the config is documented extensively and also has presets
so that you may adjust settings to your needs/preferences.

You may find that this config makes TF2 a lot smoother, eliminates stuttering,
reduces load times and increases FPS. This is because this config is heavily
tuned and the commands and values are based on TF2's source code, rather than
just experiments, guesswork and trying to understand the vague/non-existent
documentation.

The config is constantly updated with tweaks, new features and documentation
improvements — iterated upon based on user feedback and benchmarks. So if you
think there's an unoptimal value, or if it's just as simple as a comment being
confusing to you, report the problem and you'll most likely see a fix in a
future update.

## Installation

### 1. Clean your TF2 install

To make sure there are no user settings that conflict with the config, you will
have to [clean up](#clean-up) your TF2 install.

### 2. Download and install your preset and addons

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

### 3. Set Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste
`-novid -nojoy -nosteamcontroller -softparticlesdefaultoff -reuse -nohltv` into
the box and click ok.

You will also want to read about optional launch options and choosing a DirectX version [here](https://github.com/mastercoms/mastercomfig/wiki/Launch-Options).

### 4. Custom configs

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

### 5. Fixing Issues

Having issues? Check out some [troubleshooting instructions](https://github.com/mastercoms/mastercomfig/wiki/Troubleshooting).

### 6. Operating system optimizations
Although not strictly TF2 related, you can improve your performance at the OS
level: [Windows](https://github.com/mastercoms/mastercomfig/wiki/Windows-Systems),
[Linux](https://github.com/mastercoms/mastercomfig/wiki/Linux-Systems)

## Updating

When a new release comes out, check out the
[latest release](https://github.com/mastercoms/mastercomfig/releases/latest) and
then download the latest files and drag them into your `tf/custom` folder,
replacing the old files.

This config gets updates frequently, so to get the latest improvements, make
sure you check here for new releases frequently, or you can get notifications
about updates on the [Discord](https://discord.gg/CuPb2zV),
[Steam Group](https://steamcommunity.com/groups/comfig) or
[teamfortress.tv thread](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config).

## Clean up

**NOTE: This will reset ALL settings. Make sure you back up your binds and other
custom settings before you do this.**

If you have already have a config, or want to remove mastercomfig, delete any
configs you may have in `tf/custom` and delete the `tf/cfg` folder.
Then [verify your game files](https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335)
using Steam.

Next, if you have Steam Cloud Synchronization enabled, make all the files in
`STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` blank. Do not delete them, or
else Steam Cloud will redownload them. Alternatively, you can
[disable Steam Cloud](https://support.steampowered.com/kb_article.php?ref=6736-QEIG-8941#enabling).

Finally, launch TF2 with only the
`-novid -default -autoconfig +host_writeconfig +mat_savechanges +quit` launch
options. The game will launch and exit. Afterwards, remove these launch options.

## Features

* Customization
  * Extensive commenting for different options
  * Presets to easily fit your use case
  * Extra optional customization settings
  * Modular config system to allow for easy updating
* Rendering
  * Threaded graphics
  * Optimizations for modern systems
  * Optimized LOD
  * Optimized lighting
  * Optimized shadows
  * Optimized particles
  * Optimized water
  * Optimized post processing effects
  * Optimized anti-aliasing and texture filtering
  * Optimized characters
  * Optimized decals
  * Optimized gibs
  * Optimized props
  * Optimized ropes
  * Optimized OpenGL
  * Optimized item panel loading
  * Removed extra cosmetic map models (UFOs, invasion posters, rockets)
* Start up
  * Cleaned up texture preload list
  * Cleaned up client precache
  * Increased memory for OpenGL shader cache
* Memory/IO
  * Persistent LZMA buffer
  * File system optimizations
  * Fully async IO
  * Optimized memory usage
* Networking
  * Increased data rate and split rate
  * Reduced choke
  * Reuses sockets if available
  * Optimizes prediction and interp systems for better hitreg
  * Client view smoothing
  * Increased client timeout
  * Matchmaking improvements and fixes
  * Increased max file size for extra content
* Sound
  * Asynchronous sound and mixing
  * Adjusted lip sync
  * Minimized sound delay
  * Improved sound performance
  * Enhanced sound quality and spatialization
* Input
  * Optional same sensitivity for scope and other mouse enhancements

## Screenshots

Wondering what a certain preset looks like on different maps and viewmodels?
You can look at the screenshots on [cfg.tf](https://cfg.tf/make/#graphics).

## Troubleshooting

Having issues (like crashes or local servers not working where you can't move
or shoot)? Check out some [troubleshooting instructions](https://github.com/mastercoms/mastercomfig/wiki/Troubleshooting).

## See Also

Here are a few awesome TF2 modifications:

* [No Hats Mod](http://www.teamfortress.tv/35222/no-hats-mod) — Remove cosmetics
  from players
* [TF2 Visual Fix](https://github.com/agrastiOs/TF2VisualFix) — Fix issues with cosmetics
and visual effects, including Dragon's Fury lag
* [No explosion smoke script](http://www.teamfortress.tv/25647/no-explosion-smoke-script)
  — Get cleaner particles for explosions
* [Particle Limitation Pack](http://www.teamfortress.tv/22586/particle-limitation-pack)
  — Reduce certain particles
* [CleanTF2+](https://www.teamfortress.tv/51736/cleantf2-nohats-flat-textures-etc)
  — Makes TF2 a lot cleaner and simpler
* [VTF Crosshair Pack](http://www.teamfortress.tv/35367/vtf-crosshair-pack)
  — New custom crosshairs
* [yttrium's viewmodels](http://www.teamfortress.tv/34834/yttriums-competitive-viewmodels)
  — Customize hiding individual viewmodels
* [Transparent Viewmodels](http://www.teamfortress.tv/21928/transparent-viewmodels-in-any-hud)
  — Make viewmodels translucent
* [Common scripts/binds](https://www.reddit.com/r/tf2scripthelp/wiki/commonscripts)
  — Some common and useful scripts/binds, like the null-cancelling movement script

## Credits

* [Chris](https://chrisdown.name/tf2/) for starting it all
* [Comanglia](http://www.teamfortress.tv/25328/comanglias-config-fps-guide) for
  continuing what Chris started and helping a bit with my config
* [Rhapsody](http://rhapsodysl.github.io/perfconfig/) for updating Chris' config
* [Felik](http://www.teamfortress.tv/44076/se-config-framework-feliks-config-3)
  for providing an alternative to Chris-based configs
* [JarateKing](https://github.com/JarateKing) for all their amazing work on TF2 modding and configuration
* Michael Moss for the [Android Insomnia](http://whitespirals.com/fonts.html)
  font used in the logo
* The community for their continued support, advice and benchmarks. (Special
  Mentions to: amazoc, JackStanley, Setsul, Hopps, fagoatse, ZeRo5, stabby,
  Whisker, Vantavimeow, osvaldo, DarkNecrid, steph, Thole, gemm, sage, Malkraz,
  maximsmol, Fraklin, UnnoTed, Mothership, Mike, Skorp, Smoutebollen, Goatz,
  DapperTrappper, Tene and perhaps many others)
* The [Valve Developer community](https://developer.valvesoftware.com/wiki/Main_Page)
  for their documentation of Source Engine console variables and mechanics
* and to Valve, for making and updating (for over a decade!) the best class-based FPS to date with so
  much customizability on top

## Legal

Valve, the Valve logo, Steam, the Steam logo, Team Fortress, the Team Fortress
logo are trademarks and/or registered trademarks of Valve Corporation in the U.S. and/or other countries.

mastercomfig is not sponsored, endorsed, licensed by, or affiliated with Valve Corporation.
