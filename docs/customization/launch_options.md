---
description: Tune Team Fortress 2 and mastercomfig further with launch options.
...

<div style="background:linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:0.5rem;display:flex;align-items:center" class="md-typeset">
    <div style="font-size: 0;">
        <a href="https://tradeit.gg/?aff=comfig">
            <img style="height:4rem;width:4rem;aspect-ratio:1/1;" alt="tradeit.gg logo" src="https://mastercomfig.com/img/third_party/tradeit.webp" width="96" height="96" />
        </a>
    </div>
    <div style="margin-left: 0.5rem;">
        <a href="https://tradeit.gg/?aff=comfig">
            <p style="color:#fff;margin:0">
                <strong>Trade, buy or sell items</strong><br>
                Trade items instantly for real money with the lowest fees.<br>
                Fully automated. Over 45 million successful trades.
            </p>
        </a>
    </div>
</div>
# Launch Options

Right-click Team Fortress 2 in your Steam library and click **Properties...**. 
In the window that appears, under **Launch Options**, remove anything that's in
there and paste

```c
-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime
```

into the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options

=== "Windows"
    
    !!! info
        Add these launch options to your first launch, and then remove them.

     * **-dxlevel 80** : DirectX 8, Pixel Shader 1.1. Uses outdated rendering methods which do not take full advantage of the hardware.
     * **-dxlevel 90** : DirectX 9, Pixel Shader 2.0b. Lower graphical quality while still using semi-modern rendering methods.
     * **-dxlevel 95** : DirectX 9+, Pixel Shader 3.0. Highest graphical quality.

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
    * **-enablefakeip** : for security. Prevents your local server from registering its public IP with Steam, by using Steam Datagram instead. It may require a few map loads to connect to item servers.
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system with fast texture access and not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after the first launch.
    * **-freq x** : forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.
    * **-r_emulate_gl** : changes rendering pipeline to accommodate OpenGL quirks and support levels, still runs using DirectX

=== "macOS"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-enablefakeip** : for security. Prevents your local server from registering its public IP with Steam, by using Steam Datagram instead. May require a few map loads to connect to item servers.
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system with fast texture access and not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-displayindex x** : uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default)
    * **-snd_openal** : uses OpenAL instead of Mac Audio Queue, which can reduce latency and provide improved audio effects. :warning: **Experimental** as it is unsupported by Valve
    * **-glslcontrolflow** : enables support for GLSL control flow. This allows for 4 world lights. :warning: **Experimental** as it may cause rendering issues
    * **-glmenableclipplanes** : used to disable AMD driver workaround which reduces performance :warning: **Experimental** as it may cause crashes

=== "Linux"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-enablefakeip** : for security. Prevents your local server from registering its public IP with Steam, by using Steam Datagram instead. May require a few map loads to connect to item servers.
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system with fast texture access and not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-displayindex x** : uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default)
    * **-gl_enablesamplerobjects** : enables OpenGL sampler objects :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete
    * **-gl_amd_pinned_memory** : uses `AMD_pinned_memory` for efficient device memory handling :warning: **Experimental** as its performance impact (negative or positive) is unknown
    * **-gl_nv_bindless_texturing** : uses `NV_bindless_texture` for reduced overhead for managing bindings :warning: **Experimental** as its performance impact (negative or positive) is unknown and its Source implementation may not be complete

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

* **-nouserclip** : uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU and graphics API
* **-nosound** : disables sound
* **-small** : allows for resolutions smaller than 640x480

### Small resolutions

In conjunction with `-small`, or for setting custom resolution options in general which are not available in the Resolution Video Options, you can use the following options:

* **-w** : Sets the width of the game
* **-h** : Sets the height of the game

It's generally recommended that you use the video options instead of these launch options, but some smaller resolutions are not available when greater performance is needed. This is often required for low-end computers with extremely old integrated graphics cards. Some good values include:

* `-w 1024 -h 576` : Next lowest 16:9 resolution beyond available resolution options
* `-w 896 -h 504` : Lowest possible 16:9 resolution while preserving all HUD elements
* `-small -w 768 -h 432` : Small resolution, hides chat messages
* `-small -w 640 -h 360` : Smaller resolution, hides chat messages

You can still use chat even while it is hidden at smaller resolutions, so you may want to use the `messages=off` module level for it to work optimally.
