---
description: Tune Team Fortress 2 and mastercomfig further with launch options.
...

# Launch Options

Right click Team Fortress 2 in your Steam library and click **Properties...**. In the window that appears, under **Launch Options**, remove
anything that's in there and paste

```c
-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime
```

into the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options

=== "Windows"

     * **-dxlevel 80** : DirectX 8, Pixel Shader 1.1. Uses outdated rendering methods which do not take full advantage of hardware.
     * **-dxlevel 90** : DirectX 9, Pixel Shader 2.0b. Lower graphical quality while still using semi-modern rendering methods.
     * **-dxlevel 100** : DirectX 9+, Pixel Shader 3.0. Highest graphical quality. Uses hardware to determine graphics capabilities. (recommended)

=== "macOS"

    The DXLevel is automatically determined by the game and cannot be set.

=== "Linux"

    The DXLevel is automatically determined by the game and cannot be set.

## Recommended Launch Options

`-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime`

* **-novid** : disables Valve startup logo, saves time
* **-nojoy** : stops Joystick system from starting up, faster startup and less memory usage
* **-nosteamcontroller** : disables Steam controller system, faster startup, less memory usage and less input conflicts
* **-nohltv** : disables SourceTV hosting, less resource usage
* **-particles 1** : limits beam count to the minimum of 512
* **-precachefontchars** : precaches font rendering for common characters
* **-noquicktime** : disables initializing Quicktime. If you use the replay rendering feature, do not use this. Does not do anything on Linux

## Extra Launch Options

=== "Windows"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-r_emulate_gl** : changes rendering pipeline to accommodate OpenGL quirks and support levels, still runs using DirectX
    * **-freq x** : forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-enablefakeip** : for security. Prevents your local server from registering its public IP with Steam, by using Steam Datagram instead. May require a few map loads to connect to item servers.

=== "macOS"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-displayindex x** : uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default)
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-enablefakeip** : for security. Prevents your local server from registering its public IP with Steam, by using Steam Datagram instead. May require a few map loads to connect to item servers.
    * **-glslcontrolflow** : enables support for GLSL control flow. This allows for 4 world lights. :warning: **Experimental** as it may cause rendering issues
    * **-glmenableclipplanes** : used to disable AMD driver workaround which reduces performance :warning: **Experimental** as it may cause crashes
    * **-snd_openal** : uses OpenAL instead of Mac Audio Queue, which can reduce latency and provide improved audio effects. :warning: **Experimental** as it is unsupported by Valve

=== "Linux"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-displayindex x** : uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default)
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-enablefakeip** : for security. Prevents your local server from registering its public IP with Steam, by using Steam Datagram instead. May require a few map loads to connect to item servers.
    * **-gl_enablesamplerobjects** : enables OpenGL sampler objects :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete
    * **-gl_amd_pinned_memory** : uses `AMD_pinned_memory` for efficient device memory handling :warning: **Experimental** as its performance impact (negative or positive) is unknown
    * **-gl_nv_bindless_texturing** : uses `NV_bindless_texture` for reduced overhead for managing bindings :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

* **-nouserclip** : uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU and graphics API
* **-nosound** : disables sound, no performance boost unless your drivers are slow
* **-small** : allows for resolutions smaller than 640x480
