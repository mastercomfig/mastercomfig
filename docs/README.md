[![Join the Discord chat](https://img.shields.io/badge/discord-mastercomfig-7289da.svg?style=flat-square&logo=discord)](https://discord.gg/CuPb2zV)
[![Join the Steam Group](https://img.shields.io/badge/steam-mastercomfig-00adee.svg?style=flat-square)](https://steamcommunity.com/groups/comfig)
[![Follow the tf.tv thread](https://img.shields.io/badge/tftv-mastercomfig-4577a1.svg?style=flat-square)](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config)

## Quick Links
* [Installation](#installation)
* [Updating](#updating)
* [Troubleshooting](#troubleshooting)
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

### 2. Choose your preset and addons

First, you'll have to figure out what preset and addons you want to use for your
computer. A preset is a certain quality level and addons further adapt the
config to your specific hardware. You can find infomation about all presets and
addons [here](https://github.com/mastercoms/mastercomfig/wiki/Presets-and-Addons).

### 3. Download and Install

Download the VPK files of your choice from the
[latest release](https://github.com/mastercoms/mastercomfig/releases/latest),
and then drag them **directly** to your `tf/custom` folder. Do not put the VPKs
in a folder inside your `custom` folder, put them in the `custom` folder itself.
You don't have to rename anything either, just drag the files as is into `custom`.

To get to `tf/custom`, right click Team Fortress 2 in your Steam library, click
**Properties**, go to the **Local Files** tab, and then click the
**Browse Local Files...** button. Then in the files app that appears, open the
`tf` folder and then open the `custom` folder.

### 4. Set Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste
`-novid -nojoy -nosteamcontroller -noff -softparticlesdefaultoff -reuse` into
the box and click ok.

More information on launch options and choosing a DirectX version can be found
[here](https://github.com/mastercoms/mastercomfig/wiki/Launch-Options).

### 5. Custom configs (optional)

If you have your own `autoexec.cfg` already, rename it to `custom.cfg`, but make sure you don't have any
conflicting configs in there.

You can also create a `custom.cfg` in your `tf/cfg` folder to override any settings in the config.

If you have any class configs, you will have to rename them to add a `_c`.  For example, `scout_c.cfg`.

For your `custom.cfg` and your class configs, you can use [modules](https://github.com/mastercoms/mastercomfig/wiki/Modules) to easily customize settings. To do finer customization through individual
console variables and commands, you can look through the [config file on GitHub](https://github.com/mastercoms/mastercomfig/blob/beta/config/mastercomfig/cfg/comfig.cfg).

### 6. Fixing Issues

Having issues (like crashes or local servers not working where you can't move or shoot)?
Check out some [troubleshooting instructions](https://github.com/mastercoms/mastercomfig/wiki/Troubleshooting).

### 7. Operating system optimizations
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
about updates on the [Discord](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config),
[Steam Group](https://steamcommunity.com/groups/comfig) or
[teamfortress.tv thread](https://discord.gg/CuPb2zV).

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

## Alternative ZIP installation

If you absolutely know what you're doing and need the ZIP installation, you can
see [the instructions](https://github.com/mastercoms/mastercomfig/wiki/Alternative-ZIP-Installation)
(not recommended) on the wiki.

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
* [No explosion smoke script](http://www.teamfortress.tv/25647/no-explosion-smoke-script)
  — Get cleaner particles for explosions

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
