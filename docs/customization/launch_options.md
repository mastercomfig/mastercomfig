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

    !!! info
        Add these launch options to your first launch, and then remove them!

     * **-dxlevel 80** : DirectX 8, Pixel Shader 1.1. Uses outdated rendering methods which do not take full advantage of hardware.
     * **-dxlevel 100** : DirectX 9, Pixel Shader 2.0b. Uses hardware to determine graphics capabilities. (recommended)

=== "macOS"

    The DXLevel is automatically determined and cannot be set.

=== "Linux"

    The DXLevel is automatically determined and cannot be set.

## Recommended Launch Options

`-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime`

* **-novid** : Disables Valve startup logo, saves time.
* **-nojoy** : Stops Joystick system from starting up, faster startup and less memory usage.
* **-nosteamcontroller** : Disables Steam controller system, faster startup, less memory usage and less input conflicts.
* **-nohltv** : **Disables SourceTV hosting**, less resource usage.
* **-particles 1** : Limits beam count to the minimum of 512.
* **-precachefontchars** : Precaches font rendering for common characters.
* **-noquicktime** : Disables initializing Quicktime. If you use the replay rendering feature, do not use this. **Does not do anything on Linux!**

## Extra Launch Options

=== "Windows"

    * **-console** : Displays console on startup.
    * **-nostartupsound** : Disables game music on main menu.
    * **-r_emulate_gl** : Changes the rendering pipeline to accommodate OpenGL quirks and support levels. **The game still runs using DirectX.**
    * **-freq x** : Forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144.
    * **-no_texture_stream** : Disables texture streaming. Useful if you are on a powerful system **not under video memory pressure.**
    * **-autoconfig** : Resets graphics quality to the recommended settings for your hardware. Useful with the None Preset. **Remove after first launch!**
    * **-hushsteam** : For security. Prevents local game servers from registering their public IP with Steam and item servers.

=== "macOS"

    * **-console** : Displays console on startup.
    * **-nostartupsound** : Disables game music on main menu.
    * **-displayindex x** : Uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-no_texture_stream** : Disables texture streaming. Useful if you are on a powerful system **not under video memory pressure.**
    * **-autoconfig** : Resets graphics quality to the recommended settings for your hardware. Useful with the None Preset. **Remove after first launch!**
    * **-hushsteam** : For security. Prevents local game servers from registering their public IP with Steam and item servers.
    * **-glslcontrolflow** : Enables support for GLSL control flow. This allows for 4 world lights. :warning: **Experimental** as it may cause rendering issues!
    * **-glmenableclipplanes** : Disables AMD driver workaround which reduces performance. :warning: **Experimental** as it may cause crashes!
    * **-snd_openal** : Uses OpenAL instead of Mac Audio Queue, which can reduce latency and provide improved audio effects. :warning: **Experimental** as it is unsupported by Valve!

=== "Linux"

    * **-console** : Displays console on startup.
    * **-nostartupsound** : Disables game music on main menu.
    * **-displayindex x** : Uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-no_texture_stream** : Disables texture streaming. Useful if you are on a powerful system **not under video memory pressure.**
    * **-autoconfig** : Resets graphics quality to the recommended settings for your hardware. Useful with the None Preset. **Remove after first launch!**
    * **-hushsteam** : For security. Prevents local game servers from registering their public IP with Steam and item servers.
    * **-gl_enablesamplerobjects** : Enables OpenGL sampler objects. :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete!
    * **-gl_amd_pinned_memory** : Uses `AMD_pinned_memory` for efficient device memory handling :warning: **Experimental** as its performance impact (negative or positive) is unknown!
    * **-gl_nv_bindless_texturing** : Uses `NV_bindless_texture` for reduced overhead for managing bindings. :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete!

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

* **-nouserclip** : Uses software clipping instead of hardware user clip planes. FPS increase or decrease depends on your CPU+GPU and graphics API.
* **-nosound** : Disables sound, **no performance boost unless your drivers are slow!**
* **-small** : Allows for resolutions smaller than 640x480.
