---
description: Some less useful launch options documented here because why not?
...

# Silly Launch Options

These are launch options that take performance or making the game look bad too far, or they're generally not useful for any reasonable user, and are not included in the config.

* **-nops2b** : uses pixel shaders 2.0 instead of 2.0b, which makes fog thicker, giving more frames on old/bad GPUs, but decreasing FPS on others. It also causes some visual artifacts when using transparent viewmodels, like blurry scope and killcam ghosting
* **-nosrgb** : disables sRGB (limits variety of colors), and causes some effects like bright lighting, flatter colors, buggy invisible characters, stretched out models and random lines on screen
* **-mat_softwaretl** : forces software vertex processing, which might be good for bad GPUs at extremely low display resolutions, but will greatly decrease FPS otherwise
* **-insert_search_path** : essentially add new custom folders (MOD+GAME search paths) in a comma separated list. Example: `"C:\tf2_custom,C:\my_stuff.vpk"`
* **-gamestatslogging -gamestatsloggingtofile** : saves game stats which are sent to Steam as a local `tf_gamestats.dat` file
* **-disable_d3d9_hacks** : disables using undocumented vendor-specific D3D9 driver options, mostly used on AMD graphics cards
