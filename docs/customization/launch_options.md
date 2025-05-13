---
description: Tune Team Fortress 2 and mastercomfig further with launch options.
...

# Launch Options

Right-click Team Fortress 2 in your Steam library and click **Properties...**.
In the window that appears, under **Launch Options**, remove anything that's in
there and paste

```c
-novid -nojoy -nosteamcontroller -nohltv -particles 1
```

into the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options

=== "Windows"

    !!! info
        Add these launch options to your first launch, and then **remove them**. Keeping the -dxlevel launch option causes many issues, like graphics settings not applying properly, slow loading times, freezes, TF2 not using your hardware properly, and more.

     * **-dxlevel 90** : DirectX 9, Pixel Shader 2.0b. Lower graphical quality while still using semi-modern rendering methods.
     * **-dxlevel 100** : DirectX 9+, Pixel Shader 3.0. Highest graphical quality. **Note that you must launch with `-dxlevel 95` once before then using this option.**
     * **-vulkan** : DirectX 9+, Pixel Shader 3.0. Highest graphical quality. Uses Vulkan rendering through DXVK, which improve input latency, and fix some graphics bugs, with a trade-off depending on your system and drivers. **Note that you must launch with `-dxlevel 95` once before then using this option.**

=== "macOS"

    The DXLevel is automatically determined by the game and cannot be set.

=== "Linux"

    The DXLevel is automatically determined by the game and cannot be set.

## Recommended Launch Options

`-novid -nojoy -nosteamcontroller -nohltv -particles 1`

- **-novid** : disables Valve startup logo, saves time
- **-nojoy** : stops Joystick system from starting up, faster startup and less memory usage
- **-nosteamcontroller** : disables Steam controller system, faster startup, less memory usage and less input conflicts
- **-nohltv** : disables SourceTV hosting, less resource usage
- **-particles 1** : limits beam count to the minimum of 512

## Extra Launch Options

=== "Windows"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system with fast texture access and not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after the first launch.
    * **-audiolanguage english** : Forces the game voiceline audio to English. This can be useful for when you use a different game language but would like the English audio.
    * **-freq x** : forces your refresh rate for when TF2 does not automatically detect it. For example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.

=== "macOS"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system with fast texture access and not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-audiolanguage english** : Forces the game voiceline audio to English. This can be useful for when you use a different game language but would like the English audio.
    * **-displayindex x** : uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default)
    * **-snd_openal** : uses OpenAL instead of Mac Audio Queue, which can reduce latency and provide improved audio effects. :warning: **Experimental** as it is unsupported by Valve
    * **-glslcontrolflow** : enables support for GLSL control flow. This allows for 4 world lights. :warning: **Experimental** as it may cause rendering issues
    * **-glmenableclipplanes** : used to disable AMD driver workaround which reduces performance :warning: **Experimental** as it may cause crashes

=== "Linux"

    * **-console** : displays console on startup
    * **-nostartupsound** : disables game music on main menu
    * **-no_texture_stream** : disables texture streaming. Useful if you are on a powerful system with fast texture access and not under video memory pressure.
    * **-autoconfig** : resets graphics quality to recommended for your hardware. Useful with the None Preset. Remove after first launch.
    * **-audiolanguage english** : Forces the game voiceline audio to English. This can be useful for when you use a different game language but would like the English audio.
    * **-displayindex x** : uses the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default)

## Uncommon Launch Options

These launch options do not need to be used by the vast majority of users, but they are here for the few that need them.

- **-nouserclip** : uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU and graphics API
- **-nosound** : disables sound
- **-small** : allows for resolutions smaller than 640x480

### Small resolutions

In conjunction with `-small`, or for setting custom resolution options in general which are not available in the Resolution Video Options, you can use the following options:

- **-w** : Sets the width of the game
- **-h** : Sets the height of the game

It's generally recommended that you use the video options instead of these launch options, but some smaller resolutions are not available when greater performance is needed. This is often required for low-end computers with extremely old integrated graphics cards. Some good values include:

- `-w 1024 -h 576` : Next lowest 16:9 resolution beyond available resolution options
- `-w 896 -h 504` : Lowest possible 16:9 resolution while preserving all HUD elements
- `-small -w 768 -h 432` : Small resolution, hides chat messages
- `-small -w 640 -h 360` : Smaller resolution, hides chat messages

You can still use chat even while it is hidden at smaller resolutions, so you may want to use the `messages=off` module level for it to work optimally.

### DirectX 8

DirectX 8 level graphics can also be used by setting a launch option. However, DirectX 8 is a very old system for graphics released over 2 decades ago.
It does not manage modern GPU resources properly, it works poorly with the DWM, and it is implemented using an inefficient wrapper in modern versions of Windows.
You may experience increased input lag, reduced FPS, crashes, rendering bugs, and more if you use DirectX 8.
DirectX 8 also does not properly support many features of the game, including water, various gameplay visual indicators, and skins.

For these reasons and more, it is recommended that you use the DirectX versions listed above. But for those who are wondering, mastercomfig is still compatible
with your current DirectX 8 configurations. It does not override or change DirectX level.
So if you use a DirectX 8 launch option, you can continue to use it keeping the above in mind.

!!! warning
    There are also reports of DirectX 8 not working after the 64-bit update or causing crashes.
