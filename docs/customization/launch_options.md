---
description: Tune Team Fortress 2 and mastercomfig further with launch options.
---

# Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste

```
-novid -nojoy -nosteamcontroller -nohltv -particles 1 -NoQueuedPacketThread +cl_clean_textures_on_death 1 +mat_lodin_time 0
```

into the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options

!!! info
    These launch options should be added to first launch, and then removed.

=== "Windows"
    * **-dxlevel 100** : Use hardware to determine graphics capabilities and allow for DX10 card features.
=== "macOS/Linux"
    The DXLevel is automatically determined and cannot be set.

## Force Card Launch Options

TF2 may be looking for an outdated list of graphics cards to enable higher performance features.

You can fake your graphics card to one TF2 checks for, in order to unlock better graphics card usage using launch options.

* **Intel** (Broadwater or higher (past ~2005)): `-force_device_id 0x2500`
* Other cards are already set automatically.

## List of Launch Options
**Recommended**: `-novid -nojoy -nosteamcontroller -nohltv -particles 1 -NoQueuedPacketThread +cl_clean_textures_on_death 1 +mat_lodin_time 0`

* **-novid** : disables Valve startup logo, saves time
* **-nojoy** : stops Joystick system from starting up, faster startup and less memory usage
* **-nosteamcontroller** : disable Steam controller system, faster startup, less memory usage and less input conflicts
* **-nohltv** : disables SourceTV hosting, less resource usage
* **-particles 1** : limits beam count to the minimum of 512
* **-NoQueuedPacketThread** : skips creating a thread for sending large packets, which is unused on clients
* **+cl_clean_textures_on_death 1** : Removes unused textures on death, rather than potentially every frame.
* **+mat_lodin_time 0** : Time to fade in newly streamed-in texture quality. 0 disables. The fade transition is not very helpful, as it delays textures reaching their full quality. Sometimes, the effect is not even noticeable as the game loads in progressively higher quality textures, which acts as a discrete transition on its own.

## Extra Launch Options
=== "Windows"
    * **-console** : displays console on startup
    * **-r_emulate_gl**: changes rendering pipeline to accommodate OpenGL quirks and support levels, still runs using DirectX.
    * **-nostartupsound** : disable game music on main menu
    * **-freq x** : forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.
    * **+cl_threaded_bone_setup 1** : Threaded bone setup for animations, improving performance. May cause crashes.
    * **+tf_killstreakeyes_minkills 1 +tf_killstreakeyes_maxkills 1** : Enable full killstreak eyes effect upon first kill.
    * **+tf_vm_min_invis 0.22** : At least, how invisible viewmodel will be when cloaked
    * **+tf_vm_max_invis 0.5** : At most, how invisible viewmodel will be when cloaked

=== "macOS"
    * **-console** : displays console on startup
    * **-nostartupsound** : disable game music on main menu
    * **+cl_threaded_bone_setup 1** : Threaded bone setup for animations, improving performance. May cause crashes.
    * **+tf_killstreakeyes_minkills 1 +tf_killstreakeyes_maxkills 1** : Enable full killstreak eyes effect upon first kill.
    * **+tf_vm_min_invis 0.22** : At least, how invisible viewmodel will be when cloaked
    * **+tf_vm_max_invis 0.5** : At most, how invisible viewmodel will be when cloaked
    * **-displayindex x** : use the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).

=== "Linux"
    * **-console** : displays console on startup
    * **-nostartupsound** : disable game music on main menu
    * **+cl_threaded_bone_setup 1** : Threaded bone setup for animations, improving performance. May cause crashes.
    * **+tf_killstreakeyes_minkills 1 +tf_killstreakeyes_maxkills 1** : Enable full killstreak eyes effect upon first kill.
    * **+tf_vm_min_invis 0.22** : At least, how invisible viewmodel will be when cloaked
    * **+tf_vm_max_invis 0.5** : At most, how invisible viewmodel will be when cloaked
    * **-displayindex x** : use the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).
    * **-gl_amd_pinned_memory** : use `AMD_pinned_memory` for efficient device memory handling. :warning: **Experimental** as its performance impact (negative or positive) is unknown.
    * **-gl_nv_bindless_texturing** : use `NV_bindless_texture` for reduced overhead for managing bindings. :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete.

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

* **-nouserclip** : uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU and graphics API.
* **-nosound** : disables sound, no performance boost unless your drivers are slow
* **-small** : allow for resolutions smaller than 640x480
