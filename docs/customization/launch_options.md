---
description: Tune Team Fortress 2 and mastercomfig further with launch options.
---

# Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste

```
-novid -nojoy -nosteamcontroller -nohltv -particles 1
```

into the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options

=== "Windows"

    !!! info
        These launch options should be added to first launch, and then removed.

    **-dxlevel 100** : Use hardware to determine graphics capabilities.

=== "macOS"

    !!! info
        These launch options should be added to first launch, and then removed.

    **-dxlevel 90** : DX9 with Shader Model 2.

    **-dxlevel 92** : DX9 with some Shader Model 3.

=== "Linux"

    The DXLevel is automatically determined and cannot be set.

## List of Launch Options
**Recommended**: `-novid -nojoy -nosteamcontroller -nohltv -particles 1`

* **-novid** : disables Valve startup logo, saves time
* **-nojoy** : stops Joystick system from starting up, faster startup and less memory usage
* **-nosteamcontroller** : disable Steam controller system, faster startup, less memory usage and less input conflicts
* **-nohltv** : disables SourceTV hosting, less resource usage
* **-particles 1** : limits beam count to the minimum of 512

## Extra Launch Options
=== "Windows"
    * **-console** : displays console on startup
    * **-r_emulate_gl**: changes rendering pipeline to accommodate OpenGL quirks and support levels, still runs using DirectX.
    * **-nostartupsound** : disable game music on main menu
    * **-freq x** : forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.

=== "macOS"
    * **-console** : displays console on startup
    * **-nostartupsound** : disable game music on main menu
    * **-displayindex x** : use the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-glslcontrolflow** : Enable support for GLSL control flow. May cause rendering issues.

=== "Linux"
    * **-console** : displays console on startup
    * **-nostartupsound** : disable game music on main menu
    * **-displayindex x** : use the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-gl_amd_pinned_memory** : use `AMD_pinned_memory` for efficient device memory handling. :warning: **Experimental** as its performance impact (negative or positive) is unknown.
    * **-gl_nv_bindless_texturing** : use `NV_bindless_texture` for reduced overhead for managing bindings. :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete.

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

* **-nouserclip** : uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU and graphics API.
* **-nosound** : disables sound, no performance boost unless your drivers are slow
* **-small** : allow for resolutions smaller than 640x480
