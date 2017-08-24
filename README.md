# mastercomfig

This config is by default for modern PCs and aims to disable heavily unoptimized
features and adjust other settings where it does not affect behavior or visuals
noticeably. However, the config is documented extensively so that you may adjust
settings to your needs/preferences.

## Installation

[Download ZIP](https://github.com/mastercoms/tf2cfg/archive/4.0.0.zip), and extract
the `mastercoms` folder to `TF2_FOLDER/tf/custom` after [cleaning your config](#clean-up).

To get to the `TF2_FOLDER`, right click Team Fortress 2 in your library, click
properties, go to the local files tab, and then click the `browse local files...`
button.

If you already have your own `autoexec.cfg`, delete `mastercoms/cfg/autoexec.cfg` and
add `exec comfig` to your `autoexec.cfg`.
 
Finally, go to properties again and click set launch options. 
Put `-novid -nojoy -noff -nouserclip -softparticlesdefaultoff -reuse -usetcp` in
the box and click ok. More information on launch options can be found in
`mastercoms/cfg/comfig.cfg`.

If you're using Linux or macOS, check out `gl/README.md` for some optional instructions.

Having issues? Check out some [bug workarounds](https://github.com/mastercoms/tf2cfg/wiki/Bugs).

## Clean up

**NOTE: This will reset ALL settings. Make sure you back up your binds and other
custom settings before you do this.**

If you have already have a config, or want to remove mine, delete any configs you
may have in `GAME_FOLDER/tf/custom` and then delete the `GAME_FOLDER/tf/cfg` folder.
Next, disable Steam Cloud sync and then [verify your game files](https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335)
using Steam.

## Features

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
  * Increased data and heap memory
  * Persistent LZMA buffer
  * Filesystem optimizations
  * Fully async IO
* Networking
  * Fully threaded networking
  * Increased data rate and split rate
  * Reduced choke
  * Aggressively drop packets
  * Reuses sockets if available
  * Reduces socket usage for Steam Datagram
  * Improved error smoothing
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
  * Unfiltered mouse input
  * Optional same sensitivity for scope

# Screenshots

https://github.com/mastercoms/tf2cfg/wiki/Screenshots

# Bugs

https://github.com/mastercoms/tf2cfg/wiki/Bugs

# Benchmarks

Benchmarks can be found on the [tf.tv thread](http://www.teamfortress.tv/42867/mastercomfig-fps-customization-config/).
