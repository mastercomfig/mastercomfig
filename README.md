# mastercomfig

This config is by default for modern PCs and aims to disable heavily unoptimized
features and adjust other settings where it does not affect behavior or visuals
noticeably. However, the config is documented extensively and also has presets
so that you may adjust settings to your needs/preferences.

## Installation

[Download latest release ZIP](https://github.com/mastercoms/tf2cfg/releases/latest), open the `tf2cfg` folder and extract
the `mastercomfig` folder to `TF2_FOLDER/tf/custom` after [cleaning your config](#clean-up).

To get to the `TF2_FOLDER`, right click Team Fortress 2 in your library, click
properties, go to the local files tab, and then click the `browse local files...`
button.

If you already have your own `autoexec.cfg`, delete `mastercomfig/cfg/autoexec.cfg` and
add `exec comfig` to your `autoexec.cfg`.

Finally, go to properties again and click set launch options.
Put `-novid -nojoy -noff -nohltv -nouserclip -softparticlesdefaultoff -reuse -usetcp -primarysound -snoforceformat` in
the box and click ok. More information on launch options can be found in
`mastercomfig/cfg/comfig.cfg`.

You can find some presets at the bottom of `comfig.cfg` for max FPS, high quality, etc.

If you're using Linux or macOS, check out the wiki for [some optional instructions](https://github.com/mastercoms/tf2cfg/wiki/OpenGL-Systems).

Having issues? Check out some [troubleshooting instructions](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting).

## Clean up

**NOTE: This will reset ALL settings. Make sure you back up your binds and other
custom settings before you do this.**

If you have already have a config, or want to remove mine, delete any configs you
may have in `GAME_FOLDER/tf/custom` and delete the `GAME_FOLDER/tf/cfg` folder.
Then [verify your game files](https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335) using Steam. Finally, launch TF2 with only the `-default -console` launch options. Enter `host_writeconfig` in the console, and then exit and remove the launch options.

## Features

* Customization
  * Extensive commenting for different options
  * Presets to easily fit your use case
  * Extra optional customization settings
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

# Screenshots

[Screenshots are available on the wiki.](https://github.com/mastercoms/tf2cfg/wiki/Screenshots)

# Troubleshooting

[You can find solutions to common problems on the wiki.](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting)

# Benchmarks

Benchmarks can be found on the [teamfortress.tv thread](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config/).
