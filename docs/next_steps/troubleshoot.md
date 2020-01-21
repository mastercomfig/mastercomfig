# Troubleshooting

## Viewmodels are not visible

Add the following to your `user/autoexec.cfg`:

```c
viewmodel_fov 70
r_drawviemodel 1
```

Instead of `70` for `viewmodel_fov`, you can use any value you prefer.

## %killername% and other HUD bugs

This is a HUD initialization bug with TF2. You can fix it by running `hud_reloadscheme`.

If you'd like this command to automatically run to fix this bug, you can put this in your `user/autoexec.cfg`:

```c
alias game_overrides_once_c hud_reloadscheme
```

## TF2 crashes when entering a Competitive Matchmaking match

This is due to the config reset feature of in-game competitive matchmaking.  
Make sure you are using DirectX 9 (`dxlevel 90` or above). Competitive Matchmaking does not work on DirectX 8 ([Official FAQ (https://www.teamfortress.com/meetyourmatch/faq/)).

Run `mm_override` in console on the main menu before you join a in-game competitive match to make the config compatible with competitive matchmaking.
You will have to exit the game to reset the lock that competitive puts on the game's settings.

## TF2 exits on startup

Make sure you don't have any infinite loops caused by an `exec autoexec` in your custom configs (like in your `user/autoexec.cfg`). Additionally, make sure your custom configs don't contain `quit`, and that your launch options don't contain `+quit`.

## Preloading animation and/or model mods not working

If you are trying to use this sort of mod and preload it to bypass `sv_pure`, people have found async disk loading to be incompatible with preloading. Install the Slow I/O addon to completely disable async loading, and thus fix this issue.

## yttrium's viewmodels not preloading

If you use yttrium's viewmodels, the installer adds the preload commands to your `autoexec.cfg`. However, since mastercomfig doesn't use your `autoexec.cfg`, you'll have to add this to your `user/modules.cfg`:

```c
dynamic_background=preload
```

## TF2 crashing on a custom map

If TF2 is crashing to desktop after a custom map loading or after picking a class on a custom map, enter `mat_phong 1` in console. The crashes are caused by lightmapped props and phong must be enabled to allow the map to load properly. All Valve maps except for `rd_asteroid` don't use lightmapped props. More information at [TF2Maps](https://tf2maps.net/threads/guide-prop-lightmaps.24682/).

## Item panels are taking too long to load

Add `tf_time_loading_item_panels .0005` to `user/autoexec.cfg`.

## Players' sprays are not working even with the module enabled

Players' sprays are treated like a decal in-game. To get sprays to work, you have to set the `decals` module to at least `low`.

## Particle-related errors in console

Ignore these, as these are red herrings that happen in a clean TF2 installation and do not affect FPS.

## "Unknown command gl_\*" errors in console

mastercomfig sets some OpenGL-related cvars, which are only available on Linux and macOS. Thus, these errors appear a few times when using mastercomfig on Windows. These errors are harmless and can be ignored safely.
