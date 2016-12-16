# tf2cfg
My Team Fortress 2 config, also known as the master comfig.

Download ZIP, and extract the `mastercoms` folder to `GAME_FOLDER/tf/custom` after [cleaning your config](#clean-up).

To get to the `GAME_FOLDER`, right Team Fortress 2 in the Steam games list, click properties, go to the local files tab, and then click the `browse local files...` button.

Read `mastercoms/cfg/autoexec.cfg` for more instructions.

If you're running on Linux or Mac, check out `gl/README.md` for cool tips and tricks.

## Clean up

If you have already have a config, or want to remove mine, delete any configs you may have in `GAME_FOLDER/tf/custom` and then delete the `GAME_FOLDER/tf/cfg` folder. Then, add `-default -autoconfig` to the launch options and start Team Fortress 2. Now, at the main menu, enable console and then enter `host_writeconfig`, quit and then remove the `-default -autoconfig` launch option.

NOTE: This will reset ALL settings.

**Please do this every config update.**

## Features

* Faster load times
  * Optimized texture preload list
  * Cleaned up OpenGL shaders list
* Performance, without sacrificing graphical quality
  * Optimized and threaded shadows
  * Optimized ragdolls
  * Rendering optimizations
  * Threaded graphics
  * Optimized decals
  * Optimized fog
  * Optimized LOD and prop fade
  * Optimized texture caching
  * Optimized IO
  * Optimized lighting
* Better networking
  * Smoother entities
  * More room for player error
* More accurate sound
  * Enhanced Source sound processing
  * Threaded sound
* Improved input

# Benchmarks

Benchmarks and comparisons to Comanglia's config and default will be available soon. For now, just see for yourself!
