[![Join the Discord chat](https://img.shields.io/badge/discord-mastercomfig-738bd7.svg?style=flat-square)](https://discord.gg/CuPb2zV)

## Quick Links
* [Installation](https://github.com/mastercoms/tf2cfg#installation)
* [Updating](https://github.com/mastercoms/tf2cfg#updating)
* [Troubleshooting](https://github.com/mastercoms/tf2cfg#troubleshooting)

# mastercomfig

This config is by default for modern PCs and aims to disable heavily unoptimized
features and adjust other settings where it does not affect behavior or visuals
noticeably. However, the config is documented extensively and also has presets
so that you may adjust settings to your needs/preferences.

You may find that this config makes TF2 a lot smoother, eliminates stuttering,
reduces load times and increases FPS. This is because this config is heavily tuned
and the commands and values are based on TF2's source code, rather than just
experiments, guesswork and trying to understand the vague/non-existent documentation.

The config is constantly updated with tweaks, new features and documentation improvements —
iterated upon based on user feedback and benchmarks. So if you think there's an unoptimal value,
or if it's just as simple as a comment being confusing to you, report the problem and you'll
probably see a fix in a future update.

## Installation

### Installation (VPK)

Download the VPK of your choice from the [latest release](https://github.com/mastercoms/tf2cfg/releases/latest), drag the VPK to your `tf/custom` folder after [cleaning your config](#clean-up), along with any addons if needed.

For more information about presets or addons to help you choose, see [here](https://github.com/mastercoms/tf2cfg/wiki/Presets-and-Addons).

To get to your `tf/custom` folder, right click Team Fortress 2 in your library, click properties,
go to the `local files` tab, and then click the `browse local files...` button. Then, open the `tf` folder
and then open the `custom` folder.

If you have your own `autoexec.cfg` already, rename it to `custom.cfg`.

Finally, go to Team Fortress 2 properties again and click the `set launch options...` button.
Copy and paste `-novid -nojoy -nosteamcontroller -noff -softparticlesdefaultoff -reuse` into the box and click ok.
More information on launch options can be found [here](https://github.com/mastercoms/tf2cfg/wiki/Launch-Options).

Having issues (like crashes or local servers not working where you can't move or shoot)? Check out some [troubleshooting instructions](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting).

### Installation (ZIP)

Download `mastercomfig.zip` from the [latest release](https://github.com/mastercoms/tf2cfg/releases/latest) and then extract the `mastercomfig` and `mastercomfig_exec` folders to `TF2_FOLDER/tf/custom` after [cleaning your config](#clean-up).

To get to the `TF2_FOLDER`, right click Team Fortress 2 in your library, click properties,
go to the `local files` tab, and then click the `browse local files...` button.

If you already have your own `autoexec.cfg`, copy the contents of `mastercomfig_exec/cfg/autoexec.cfg`
to the top of your own `autoexec.cfg` and then delete the `mastercomfig_exec` folder. Do the same with `listenserver.cfg`.

Finally, go to Team Fortress 2 properties again and click the `set launch options...` button.
Copy and paste `-novid -nojoy -nosteamcontroller -noff -softparticlesdefaultoff -reuse` into the box and click ok.
More information on launch options can be found in `mastercomfig_exec/cfg/autoexec.cfg`.

You can also find some instructions at the bottom of `mastercomfig_exec/cfg/autoexec.cfg` to change the config for maximum performance, maximum quality, etc.

If you're using Linux or macOS, check out the wiki for [some optional instructions](https://github.com/mastercoms/tf2cfg/wiki/OpenGL-Systems).

Having issues (like crashes or local servers not working where you can't move or shoot)? Check out some [troubleshooting instructions](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting).

## Updating

### Updating (VPK)

Drag the new VPK to your custom folder, replacing the old one.

### Updating (ZIP)

Download the update's release ZIP and then extract the `mastercomfig` folder to `TF2_FOLDER/tf/custom`.

You won't need to copy the other folders unless specified in the update. This means that if you miss a few updates,
make sure to look through the release notes for each update you missed to see if the other folders require an update.

## Clean up

**NOTE: This will reset ALL settings. Make sure you back up your binds and other
custom settings before you do this.**

If you have already have a config, or want to remove mastercomfig, delete any configs you
may have in `TF2_FOLDER/tf/custom` and delete the `TF2_FOLDER/tf/cfg` folder.
Then [verify your game files](https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335) using Steam.

Next, if you have Steam Cloud Synchronization enabled, make all the files in `STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` blank. Do not delete them, or else Steam Cloud will redownload them.

Finally, launch TF2 with only the `-novid -default -autoconfig +host_writeconfig +mat_savechanges +quit` launch options. The game will launch and exit. Afterwards, remove these launch options.

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
  * Optimized antialiasing and texture filtering
  * Optimized characters
  * Optimized decals
  * Optimized gibs
  * Optimized props
  * Optimized ropes
  * Optimized OpenGL
  * Optimized item panel loading
* Start up
  * Cleaned up texture preload list
  * Increased memory for OpenGL shader cache
* Memory/IO
  * Persistent LZMA buffer
  * Filesystem optimizations
  * Fully async IO
* Networking
  * Increased data rate and split rate
  * Reduced choke
  * Reuses sockets if available
  * Client view smoothing
  * Increased client timeout
  * Matchmaking improvements and fixes
  * Increased max file size for extra content
* Sound
  * Asynchronous sound and mixing
  * Adjusted phonemes
  * Minimized sound delay
  * Improved sound performance
  * Enhanced sound quality and spatialization
* Input
  * Key time from smoothed frametime
  * Optional same sensitivity for scope

## Screenshots

[Screenshots are available on the wiki](https://github.com/mastercoms/tf2cfg/wiki/Screenshots).

## Troubleshooting

[You can find solutions to common problems on the wiki](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting).

## Benchmarks

[Benchmarks can be found on the teamfortress.tv thread](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config/).

## Credits

* [Chris](https://chrisdown.name/tf2/) for starting it all
* [Comanglia](http://www.teamfortress.tv/25328/comanglias-config-fps-guide) for continuing what Chris started and helping a bit with my config
* [Rhapsody](http://rhapsodysl.github.io/perfconfig/) for updating Chris' config
* [Felik](http://www.teamfortress.tv/44076/se-config-framework-feliks-config-3) for providing an alternative to Chris-based configs
* The TeamFortress.TV community in the [config thread](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config/) for their continued support, advice and benchmarks. (Special Mentions to: amazoc, JackStanley, Setsul, Hopps, fagoatse, ZeRo5, stabby, Whisker, Vantavimeow, osvaldo, DarkNecrid, steph, Thole, gemm, sage, Malkraz, JarateKing and perhaps many others)
* The [Valve Developer community](https://developer.valvesoftware.com/wiki/Main_Page) for their documentation of Source Engine console variables and mechanics
* and to Valve, for making and updating the best class-based FPS to date with so much customizability on top

## See Also

Here are a few awesome TF2 modifications:

* [No Hats Mod](http://www.teamfortress.tv/35222/no-hats-mod)
* [No explosion smoke script](http://www.teamfortress.tv/25647/no-explosion-smoke-script)
* [Particle Limitation Pack](http://www.teamfortress.tv/22586/particle-limitation-pack)

## Legal

Valve, the Valve logo, Steam, the Steam logo, Team Fortress, the Team Fortress logo are trademarks and/or registered trademarks of Valve Corporation. Mastercomfig is not associated with nor endorsed by Valve Corporation.
