---
description: Having trouble with mastercomfig? Here's where to go to first for solutions.
...

# Quick Fixes

This is a list of common issues users experience with mastercomfig, and how to solve them.

If you find that you need more assistance, reach out to our community on
[Discord](https://discord.gg/CuPb2zV) or [Steam](https://steamcommunity.com/groups/comfig).

## mastercomfig isn't loading! / My custom configs aren't loading!

!!! tip
    Make sure these are `.cfg` files and not `.txt` or `.cfg.txt`. To ensure this, you can enable file name extensions in Windows and it will make any future configuration easier. Open the start menu, search for `Folder Options` and then select the first result. In the opened options window, go to the View tab, and under Advanced settings, clear Hide extensions for known file types. Finally, click ok.

Go over the [installation steps](../setup/install.md) once again.

Make sure the mastercomfig preset VPK is in the `tf/custom` folder.

Make sure your TF2 configs (`autoexec.cfg`, `modules.cfg`, etc) are in the `cfg/user` folder.

If you moved any of your own configs that are not listed [here](../setup/install.md#custom-configs) into the `cfg/user` folder, either move them back into the `cfg` folder or make sure any of your own configs that contain `exec [your-config-name]` are updated to instead contain `exec user/[your-config-name]`.

## I am possibly experiencing performance issues due to overheating

Consider the following instructions from Valve to analyze your overheating issue, if you are on Windows:

>Most Valve games have a built-in command for monitoring your CPU speed. If you add "+cpu_frequency_monitoring 2" to your launch options then the CPU's speed will be measured every two seconds. The measured frequency is compared to how fast Windows says that the CPU is running and this percentage is displayed in the `cl_showfps` and `net_graph` displays. Under normal circumstances this percentage should be 90% or higher. If the displayed CPU frequency percentage drops below about 80-85% then it suggests that your CPU may be overheating and being thermally throttled. If it drops below 50-55% then you may have a serious problem. If this percentage is above 100% this means that your CPU is overclocking itself (TurboCore or TurboBoost) and is running well. If these CPU slowdowns happen when your game is running slowly then it is reasonable to assume that they are the cause and that your CPU is overheating. CPU overheating can be caused by overclocking, insufficient cooling, insufficient airflow, failing or dirty fans, or other causes. Since this is a hardware problem (a properly designed PC should never overheat), the only solutions are hardware fixes, such as a better heat sink, better ventilation, etc.

You can also use any CPU frequency monitoring utility and compare your clock speed to your CPU's base clock.

## Viewmodels are not visible

Add the following to your `autoexec.cfg`:

```c
viewmodel_fov 70
r_drawviewmodel 1
```

Instead of `70` for `viewmodel_fov`, you can use any value you prefer.

## Black artifacts all over the screen on Linux

This is a bug with later versions of Mesa. You can fix it by adding `lighting_ex=high` to your `modules.cfg` and setting the following in your `autoexec.cfg`:

```c
mat_bumpmap 1
mat_specular 1
```

## Lighting/shadows are blocky

In an update to mastercomfig, the config was fixed to correctly apply the lightmap filtering setting which controls if baked shadows are smoothed out.

You can re-enable the lightmap filtering and get smooth shadows by adding `alias lightmaps_override` to your `autoexec.cfg`.

View [Game Overrides](../../customization/custom_configs/#game-overrides) for more information.

## Ragdolls aren't instantly disappearing

There was a bug fix to `ragdolls=off`, to avoid the issue where ragdolls would still be present on the map and accumulate over time, causing performance issues. The cost of this was compared to the very short physics initialization and simulation, and it was determined that it would be better to avoid a leak from ragdolls never getting deleted by enabling physics on ragdolls. You can get the old behavior by using `ragdolls=hidden` in `modules.cfg`, at the cost of this increased overhead, if you prefer the visuals.

## My chat is disabled

[A TF2 update](https://www.teamfortress.com/post.php?id=62459) introduced the ability to completely disable text chat. mastercomfig was updated shortly after to accommodate this change, with the Very Low preset disabling chat completely. If you are using Very Low preset or the `messages=off` module, you can re-enable chat by adding `messages=on` to your `modules.cfg` file. To disable chat the old way you can use the `messages=hide` module.

## TF2 crashes when entering a Competitive Mode match

According to the [Official FAQ](https://www.teamfortress.com/meetyourmatch/faq/), Competitive Mode requires DirectX 9. Make sure your `dxlevel` is set to 90 or above (see [here](../../customization/launch_options/#dxlevel-launch-options) for instructions).

Additionally, Competitive Mode locks a bunch of settings that are normally only accessible via the console.  
Run `mm_override` in the console on the main menu before joining a Competitive Mode match to make the config compatible.  
You will have to restart the game to unlock the hidden settings and revert the config back to normal.

## TF2 exits on startup

Make sure you don't have any infinite loops caused by an `exec autoexec` in your custom configs (like in your `autoexec.cfg`). Additionally, make sure your custom configs don't contain `quit`, and that your launch options don't contain `+quit`.

## Preloading animation and/or model mods not working or crashing

If you're trying to preload a mod to bypass `sv_pure`, async disk loading has been found to be incompatible with this. Make sure you do not have `mod_support=off` in your `modules.cfg` to avoid enabling some async disk loading features. The `mod_support` module is enabled in all presets by default.

You may also want to preload mods with the `dynamic_background=itemtest` module. **If** you are using yttrium's viewmodels, use `dynamic_background=preload` instead.

Optionally, you may delete any `autoexec.cfg` files created automatically in TF2's `cfg` folder by the yttrium's viewmodels program. These won't conflict with mastercomfig, since files in VPKs will always be chosen over files in the `cfg` folder.

## TF2 crashing on a custom map

If TF2 is crashing to desktop after a custom map loading or after picking a class on a custom map, add `lighting_ex=high` to your `modules.cfg`.

The crashes are caused by lightmapped props and phong must be enabled to allow the map to load properly. No Valve map uses lightmapped props, excluding `rd_asteroid`.  
More information at [TF2Maps](https://tf2maps.net/threads/guide-prop-lightmaps.24682/).

## Item panels aren't loading

Add `tf_time_loading_item_panels .0005` to your `autoexec.cfg`.

## Why don't my killstreak sheens show?

On the Very Low preset, killstreak sheens are disabled by default. To enable killstreak sheens, use the module `sheens_speed=slow`.

## Grappling hook is invisible (in Mannpower and custom servers)

Grappling hooks use ropes to show in-game. To get them to work, you have to set the `ropes` module to at least `low`.

## Particle-related errors in console

Ignore these, as these happen in a clean TF2 installation and only Valve can fix them.

## I want another interp value

**To summarize:** mastercomfig has the (currently known) best interp values, and you really shouldn't mess with them unless you know _exactly_ what you're doing.

mastercomfig sets optimal interp values. Interp is a low-level networking setting which controls how incoming packets are used by the client. Packets have an inherent delay, and may not come at all due to issues along your route, low server framerate, server framerate variance, and ping fluctuations. Interp is a very sensitive networking setting which tunes your buffer for incoming packets. If you set it too low, you will get networking errors, resulting in worse hitreg, because of trying to use game packets which have not come in yet.

Imagine it like controlling the size of the gray bar in YouTube. If you set it too high, your video playback will be delayed. If you set it too low, then you will be constantly encountering freezing in video playback as the video download tries to keep up with playback. In the case of TF2, when the client needs to use a new server game packet when there is not one, it will instead extrapolate movement based on previous data, assuming that everything is continuing on its same path, which can be wildly inaccurate.

If you are worried about the delay being high, rest assured that the tick delay caused by interpolation is compensated for the following: hitscan, melee, backstabs, flamethrower and the Medigun. Projectiles are simulated on the server, and thus are not compensated. Projectile spawns and despawns are not interpolated, which means that you may notice a client-side delay in projectiles exiting your barrel and subsequently impacting the target. In a game like TF2, this is not a huge issue, and you should be more worried about the accuracy of game state rather than a few milliseconds of client-side delay.

Now having said all that, you still have the option to change interp if you really want to and understand what you're doing. The best way to change interp is to use the snapshot buffer module, which has a few preset values for the most common use case of higher than normal packet loss. If you want a specific interp value, the best place to set it is in `game_overrides.cfg` (make sure it is in the `user` folder), like so:

```c
cl_interp_ratio x
cl_interp x
```

One other thing to note is that client interp is determined by whichever is the greater of cl_interp_ratio divided by cl_updaterate, and the value of cl_interp. cl_interp_ratio and cl_interp have no interaction beyond that.

## Scottish Resistance stickybombs have no outline

!!! warning
    Outlines of any kind do not work on DirectX 8.

On some mastercomfig presets, outlines are disabled. The outline settings include player and objective outlines as well as outlines for Scottish Resistance stickybombs. You can enable outlines by adding `outlines=medium` (or higher) to your `modules.cfg`.

## I have red bullet holes on wood

This is caused by a bug in TF2, where wood props do not look up the correct decal texture when prop decals are disabled, and instead display the red ERROR texture. Put `r_decalstaticprops 1` in your `autoexec.cfg` to enable prop decals and avoid this bug, at the cost of some performance.

## I switched from Very Low to another preset but some settings persist

Run `very_low_reset` on the console. It will reset the remaining settings that were left saved in your game.

Please note that running this may reset some personal preferences back to default.

## I can't customize Motion Blur, Anti-Aliasing and Post-Processing modules

This is because you have the Transparent Viewmodels addon installed. The Transparent Viewmodels addon overwrites certain modules and commands to make it work correctly.

To solve your problem, just uninstall the addon.

## Game resolution or graphics keep resetting

Check to see if you have `-dxlevel 100` in your TF2 launch options, it may have a different number next to it. You only needed to launch with this launch option one time.
