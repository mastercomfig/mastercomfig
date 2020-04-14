---
description: Having trouble with mastercomfig? Here's where to go to first for solutions.
---

# Troubleshooting

This is a list of common issues users experience with mastercomfig, and how to solve them.

If you find that you need more assistance, please reach out to our community on:
[Discord](https://discord.gg/CuPb2zV) or [Steam](https://steamcommunity.com/groups/comfig).

## Configs not working

Go over the [installation steps](../setup/install.md) once again.

Make sure the mastercomfig preset VPK is in the `tf/custom` folder.

Make sure your TF2 configs are in the `cfg/user` folder.

## Viewmodels are not visible

Add the following to your `autoexec.cfg`:

```c
viewmodel_fov 70
r_drawviemodel 1
```

Instead of `70` for `viewmodel_fov`, you can use any value you prefer.

## %killername% and other HUD bugs

This is a HUD initialization bug with TF2. You can fix it by running `hud_reloadscheme`.

If you'd like this command to automatically run to fix this bug, you can put this in your `autoexec.cfg`:

```c
alias game_overrides_once_c hud_reloadscheme
```

The command will only run on the first time when you spawn in a match.

## TF2 crashes when entering a Competitive Matchmaking match

This is due to the config reset feature of in-game competitive matchmaking.  
Make sure you are using DirectX 9 (`dxlevel 90` or above). Competitive Matchmaking does not work on DirectX 8 ([Official FAQ (https://www.teamfortress.com/meetyourmatch/faq/)).

Run `mm_override` in console on the main menu before you join a in-game competitive match to make the config compatible with competitive matchmaking.
You will have to exit the game to reset the lock that competitive puts on the game's settings.

## TF2 exits on startup

Make sure you don't have any infinite loops caused by an `exec autoexec` in your custom configs (like in your `autoexec.cfg`). Additionally, make sure your custom configs don't contain `quit`, and that your launch options don't contain `+quit`.

## Preloading animation and/or model mods not working or crashing

If you are trying to use this sort of mod and preload it to bypass `sv_pure`, people have found async disk loading to be incompatible with preloading.

Put `mod_support=on` in your `modules.cfg` to disable some async disk loading features.

You may also want to preload mods with the `dynamic_background=itemtest` module.

## yttrium's viewmodels not preloading

If you use yttrium's viewmodels, the installer adds the preload commands to your `autoexec.cfg`. However, since mastercomfig doesn't use your `autoexec.cfg`, you'll have to add this to your `modules.cfg`:

```c
dynamic_background=preload
```

## TF2 crashing on a custom map

If TF2 is crashing to desktop after a custom map loading or after picking a class on a custom map, add `mat_phong 1` to your `autoexec.cfg`. The crashes are caused by lightmapped props and phong must be enabled to allow the map to load properly. All Valve maps except for `rd_asteroid` don't use lightmapped props. More information at [TF2Maps](https://tf2maps.net/threads/guide-prop-lightmaps.24682/).

## Item panels are taking too long to load

Add `tf_time_loading_item_panels .0005` to `autoexec.cfg`.

## Players' sprays are not working even with the module enabled

Players' sprays are treated like a decal in-game. To get sprays to work, you have to set the `decals` module to at least `low`.

## Particle-related errors in console

Ignore these, as these happen in a clean TF2 installation and only Valve can fix them.

## I want another interp value

mastercomfig sets optimal interp values. Interp is a low-level networking setting which controls how incoming packets are used by the client. Because packets have an inherent delay, and may not come at all due to issues along your route, low server framerate, server framerate variance, and ping fluctuations. Interp is a very sensitive networking setting which tunes your buffer for incoming packets. If you set it too low, you will get networking errors, resulting in worse hitreg, because of trying to use game packets which have not come in yet. 

Imagine it like controlling the size of the gray bar in YouTube. If you set it too high, your video playback will be delayed. If you set it too low, then you will be constantly be encountering freezing in video playback as the video download tries to keep up with playback. In the case of TF2, when the client needs to use a new server game packet when there is not one, it will instead extrapolate movement based on previous data, assuming that everything is continuing on its same path, which can be wildly inaccurate.

If you are worried about the delay being high, rest assured that the tick delay caused by interpolation is compensated for the following: hitscan, melee, backstabs, and medi-gun. Projectiles are simulated on the server, and thus are not compensated. Projectile spawns and despawns are not interpolated, which means that you may notice a client-side delay in projectiles exiting your barrel and subsequently impacting the target. In a game like TF2, this is not a huge issue, and you should be more worried about accuracy of game state rather than a few milliseconds of client-side delay.

Now having said all that, you still have the option to change interp if you really want to and understand what you're doing. The best way to change interp is to use the snapshot buffer module, which has a few preset values for the most common use case of higher than normal packet loss. If you want a specific interp value, the best place to set it is in `game_overrides.cfg` (make sure it is in the `user` folder), like so:

```c
cl_interp_ratio x
cl_interp x
```

One other thing to note is that client interp is determined by whichever is the greater of cl_interp_ratio divided by cl_updaterate, and the value of cl_interp. cl_interp_ratio and cl_interp have no interaction beyond that.

Finally, if you do not believe anything said here, and think interp is horrible, try disabling it by putting `+cl_interpolate 0` in your launch options and watch in horror as everything stutters around, especially on higher refresh rate monitors. As you will find out, interp is a very needed solution for networked multiplayer games. Remove `+cl_interpolate 0` from your launch options once you are done with this experiment.

## "Unknown command gl_\*" errors in console

mastercomfig sets some OpenGL-related cvars, which are only available on Linux and macOS. Thus, these errors appear a few times when using mastercomfig on Windows. These errors are harmless and can be ignored safely.

## "Unknown command cl_clean_textures_on_death", etc errors in console

mastercomfig sets some development only cvars, which are only available to be set in the launch options. These errors are a bug, and the value _is_ set, despite what the console says.
