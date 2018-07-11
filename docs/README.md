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

mastercomfig is a modern Team Fortress 2 config that makes it simple to customize the game to your liking.

It comes packed with optimizations that increase FPS, reduce load times and make the game smoother for a wide variety of PCs.

Fine tune each individual settings TF2 has to offer with ease, or choose from the many presets to get your preferred balance between graphical quality and performance.

## Installation

### 1. Clean your TF2 install

To make sure there are no user settings that conflict with the config, you will
have to [clean up](#clean-up) your TF2 install.

### 2. Download the app

[Download](https://mastercomfig.com/7) and install the mastercomfig app.

### 3. Set Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste
`-novid -noassert -nojoy -nosteamcontroller -softparticlesdefaultoff -reuse` into
the box and click ok.

You will also want to read about optional launch options and choosing a DirectX version [here](https://github.com/mastercoms/mastercomfig/wiki/Launch-Options).

### 4. Custom configs

For most people, the app with be enough for customization. But if you'd like to write your own custom settings,
this section is for you.

You can't use an `autoexec.cfg` with mastercomfig. Instead, you will have to use `custom.cfg`.

So, if you already have an `autoexec.cfg`, just rename it to `custom.cfg`. Make sure you don't have a pre-existing
full blown config like Comanglia's or Chris' config or some network config in your `custom.cfg`, as that will
conflict with mastercomfig.

If you don't have an `autoexec.cfg`, you can create a `custom.cfg` in your `tf/cfg` folder to override any settings in the config.

If you have any class configs, you will have to rename them to add a `_c`.  (`scout_c.cfg`, `soldier_c.cfg`,
`pyro_c.cfg`, `demoman_c.cfg`, `heavyweapons_c.cfg`, `engineer_c.cfg`, `medic_c.cfg`, `sniper_c.cfg` and `spy_c.cfg`).
You can change the name of your custom class configs using the `class_config_classname` alias.
For example, you can put `alias class_config_heavyweapons "exec myheavy"` in `custom.cfg` if you want to use a file named `myheavy.cfg` for Heavy.

If there's something you'd like to run for all of your class configs, you can add it to `game_overrides_c.cfg`.
You can change the name of your custom game overrides config using the `game_overrides_c` alias.
For example, you can put `alias game_overrides_c "exec mygameoverrides"` in `custom.cfg` if you want to use a file named `mygameoverrides.cfg`.

If you have a `listenserver.cfg`, you will have to rename it to `listenserver_c.cfg`.
You can change the name of your custom listen server config using the `listenserver_c` alias.
For example, you can put `alias listenserver_c "exec mylistenserver"` in `custom.cfg` if you want to use a file named `mylistenserver.cfg`.

You can also get creative and use the aforementioned aliases to change your class config on the fly using binds or the console.
For example, you could have different class configs for Scout in competitive and casual and then change your `class_config_scout` alias to run your preferred class config when you want.

### 5. Fixing Issues

Having issues? Check out some [troubleshooting instructions](https://github.com/mastercoms/mastercomfig/wiki/Troubleshooting).

### 6. Operating system optimizations
Although not strictly TF2 related, you can improve your performance at the OS
level: [Windows](https://github.com/mastercoms/mastercomfig/wiki/Windows-Systems),
[Linux](https://github.com/mastercoms/mastercomfig/wiki/Linux-Systems)

## Updating

When a new release comes out, download the
[latest update](https://github.com/mastercoms/mastercomfig/releases/latest) for the app.

For Windows, you should get automatic updates whenever they're available.

On Linux, you'll be able to either use a repo for your distro or just install the app file again to update.

This config gets updates frequently, so to know about the latest changes, make
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

* [No explosion smoke script](http://www.teamfortress.tv/25647/no-explosion-smoke-script)
  — Get cleaner particles for explosions
* [VTF Crosshair Pack](http://www.teamfortress.tv/35367/vtf-crosshair-pack)
  — New custom crosshairs
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
* Michael Moss for the [Android Insomnia](http://whitespirals.com/fonts.html)
  font used in the logo
* The community for their continued support, advice and benchmarks. (Special
  Mentions to: amazoc, JackStanley, Setsul, Hopps, fagoatse, ZeRo5, stabby,
  Whisker, Vantavimeow, osvaldo, DarkNecrid, steph, Thole, gemm, sage, Malkraz,
  JarateKing, maximsmol, Fraklin and perhaps many others)
* The [Valve Developer community](https://developer.valvesoftware.com/wiki/Main_Page)
  for their documentation of Source Engine console variables and mechanics
* and to Valve, for making and updating the best class-based FPS to date with so
  much customizability on top

## Legal

Valve, the Valve logo, Steam, the Steam logo, Team Fortress, the Team Fortress
logo are trademarks and/or registered trademarks of Valve Corporation.
mastercomfig is not associated with nor endorsed by Valve Corporation.
