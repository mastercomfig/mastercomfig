# Troubleshooting

## Viewmodels are not visible

Set the following:

```c
viewmodel_fov 54
r_drawviemodel 1
```

Instead of `54` for `viewmodel_fov`, you can use any value you prefer.

## TF2 crashes when entering a Competitive Matchmaking match

This is due to the config reset feature of in-game competitive matchmaking.  
Make sure you are using DirectX 9 (`dxlevel 90` or above). Competitive Matchmaking does not work on DirectX 8 ([Official FAQ](https://www.teamfortress.com/meetyourmatch/faq/)).

Run `mm_override` in console on the main menu before you join a in-game
competitive match to make the config compatible with competitive matchmaking.

You will have to exit the game to reset the lock that competitive puts on the game's settings.

## TF2 exits on startup

This is due a bug from a recent update that causes `mat_antialias` to crash the game when run on startup. Remove `mat_antialias` from your custom configs if you have it, remove `-dxlevel` from your launch options and remove any line with `mat_antialias` in your `tf/cfg/config.cfg` file.

Also make sure you don't have any infinite loops caused by an `exec autoexec` in your custom configs.

## Animation and/or model mods not working

If you are trying to use this sort of mod and preload it to bypass `sv_pure`, people have found async disk loading to be incompatible with preloading, so you'll have to use the Slow I/O addon.

## yttrium's viewmodels not preloading

If you use yttrium's viewmodels, the installer adds a preload command to your `autoexec.cfg`. However, since mastercomfig doesn't use your `autoexec.cfg`, you'll have to add this to your `user/autoexec.cfg`:

```c
map_background preload_room; wait 10; disconnect
```

## Crashing when trying to preload mods

Preloading conflicts with a memory usage optimization in the mastercomfig low memory addon. Set `cl_always_flush_models 0`.

## TF2 crashing on a custom map

If TF2 is crashing to desktop after a custom map loading / after picking a class on a custom map enter `mat_phong 1` in console. The crashes are caused by lightmapped props and phong must be enabled to allow the map to load properly. All Valve maps except for `rd_asteroid` don't use lightmapped props. More information at [TF2Maps](https://tf2maps.net/threads/guide-prop-lightmaps.24682/).

## Item panels are taking too long to load

Set `tf_time_loading_item_panels 0.0005`.
