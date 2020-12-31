---
description: Tune Team Fortress 2 and mastercomfig further with launch options.
...

# Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste

```c
-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars
```

into the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options

=== "Windows"

    !!! info
        These launch options should be added to first launch, and then removed.

    **-dxlevel 100** : Uses hardware to determine graphics capabilities.

=== "macOS"

    !!! info
        These launch options should be added to first launch, and then removed.

    **-dxlevel 90** : Uses DX9 with Shader Model 2.

    **-dxlevel 92** : Uses DX9 with some Shader Model 3.

=== "Linux"

    The DXLevel is automatically determined and cannot be set.

## Recommended Launch Options

`-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars`

* **-novid** : Disables Valve startup logo, saves time.
* **-nojoy** : Stops Joystick system from starting up, faster startup and less memory usage.
* **-nosteamcontroller** : Disables Steam controller system, faster startup, less memory usage and less input conflicts.
* **-nohltv** : Disables SourceTV hosting, less resource usage.
* **-particles 1** : Limits beam count to the minimum of 512.
* **-precachefontchars** : Precaches font rendering for common characters.

## Extra Launch Options

=== "Windows"

    * **-console** : Displays console on startup.
    * **-nostartupsound** : Disables game music on main menu.
    * **-r_emulate_gl** : Changes rendering pipeline to accommodate OpenGL quirks and support levels, still runs using DirectX.
    * **-freq x** : Forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.
    * **-no_texture_stream** : Disables texture streaming. Useful if you are on a powerful system not under video memory pressure.

=== "macOS"

    * **-console** : Displays console on startup.
    * **-nostartupsound** : Disables game music on main menu.
    * **-displayindex x** : Uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-glslcontrolflow** : Enables support for GLSL control flow. :warning: **Experimental** as it may cause rendering issues.
    * **-glmenableclipplanes** : Used to disable AMD driver workaround which reduces performance. It may cause crashes.
    * **-snd_openal** : Uses OpenAL instead of Mac Audio Queue, which can reduce latency and provide improved audio effects. :warning: **Experimental** as it is unsupported by Valve.
    * **-no_texture_stream** : Disables texture streaming. Useful if you are on a powerful system not under video memory pressure.

=== "Linux"

    * **-console** : Displays console on startup.
    * **-nostartupsound** : Disables game music on main menu.
    * **-displayindex x** : Uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-gl_enablesamplerobjects** : Enables OpenGL sampler objects :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete.
    * **-gl_amd_pinned_memory** : Uses `AMD_pinned_memory` for efficient device memory handling :warning: **Experimental** as its performance impact (negative or positive) is unknown.
    * **-gl_nv_bindless_texturing** : Uses `NV_bindless_texture` for reduced overhead for managing bindings :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete.
    * **-no_texture_stream** : Disables texture streaming. Useful if you are on a powerful system not under video memory pressure.

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

* **-nouserclip** : Uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU and graphics API.
* **-nosound** : Disables sound, no performance boost unless your drivers are slow.
* **-small** : Allows for resolutions smaller than 640x480.
