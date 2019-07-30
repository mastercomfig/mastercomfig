# Troubleshooting

## Can't move or shoot in local servers or local server crashes

Enter `host_thread_mode 0` in console. When you're done, switch it back to `host_thread_mode 1`.

## Team health icons are not showing

```c
tf_healthicon_height_offset 10
tf_hud_target_id_offset 0
tf_hud_target_id_disable_floating_health 0
tf_hud_target_id_alpha 100
```

If it still doesn't work, use `tf_hud_target_id_disable_floating_health 1`.

## Viewmodels are not visible

```c
viewmodel_fov 54
r_drawviemodel 1
```

## TF2 crashes when entering a Competitive Matchmaking match

This is due to the config reset feature of in-game competitive matchmaking.  
Make sure you are using DirectX 9 (dxlevel 90 or above). Competitive Matchmaking does not work on DirectX 8 (See [official FAQ](http://www.teamfortress.com/meetyourmatch/faq/)).  
Run `mm_override` in console on the main menu before you join a in-game
competitive match to make the config compatible with competitive matchmaking.

## TF2 exits on startup

This is due a bug from a recent update that causes `mat_antialias` to crash the game when run on startup. Remove `mat_antialias` from your custom configs if you have it, remove `-dxlevel` from your launch options and remove any line with `mat_antialias` in your `tf/cfg/config.cfg` file.

Also make sure you don't have any infinite loops caused by an `exec autoexec` in your custom configs.

## Animation and/or model mods not working

If you are trying to use this sort of mod and preload it to bypass `sv_pure`, people have found async disk loading to be incompatible with preloading, so you'll have to add this to your `user/autoexec.cfg`:

```c
mod_load_anims_async 0
mod_load_mesh_async 0
mod_load_vcollide_async 0
```

## yttrium's viewmodels not preloading

If you use yttrium's viewmodels, the installer adds a preload command to your `autoexec.cfg`. However, since mastercomfig doesn't use your `autoexec.cfg`, you'll have to add this to your `user/autoexec.cfg`:

```c
map_background preload_room; wait 10; disconnect
```

## Crashing when trying to preload mods

Preloading conflicts with a memory usage optimization in mastercomfig. Set `cl_always_flush_models 0`.

## Models are black unless you're very close to them

Enter `mat_forcemanagedtextureintohardware 0` in console. If it is still not fixed, use `mat_mipmaptextures 0`, at a performance loss.

## TF2 crashing on a custom map

If TF2 is crashing to desktop after a custom map loading / after picking a class on a custom map enter `mat_phong 1` in console. The crashes are caused by lightmapped props and phong must be enabled to allow the map to load properly. All Valve maps except for `rd_asteroid` don't use lightmapped props. More information at [TF2Maps](https://tf2maps.net/threads/guide-prop-lightmaps.24682/).

## My autoexec isn't working

The autoexec provided by mastercomfig is overriding your autoexec. You'll have to move your `autoexec.cfg` to a new folder in `tf/cfg` called `user`.

## Item panels are taking too long to load

Try setting `tf_time_loading_item_panels 0.0005`.
