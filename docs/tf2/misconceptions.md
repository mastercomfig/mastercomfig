---
description: Common misconceptions with TF2 that mastercomfig corrects.
...

# Misconceptions

## Bad launch options

* **-nocrashdialog** : does not improve FPS, plus it makes crashes harder to debug
* **+exec autoexec** : `autoexec.cfg` is already run on startup, there is no need to run it again
* **+exec config** : `config.cfg` is already run on startup, there is no need to run it again
* **-exec** : doesn't exist, perhaps you meant `+exec`?
* **-nod3d9ex** : this disables extensions that improve resource management, speed up alt-tabs and improve memory usage. Ages ago, drivers did not support this option very well, and people recommended disabling it, but now, it is all good and there is no reason to use this launch option
* **-threads** : the Source Engine automatically determines the value for this, and caps it at 3, due to performance issues with higher values. Valve also [recommends](https://www.reddit.com/r/GlobalOffensive/comments/5y8r7v/in_depth_discussion_of_the_threads_launch_option/dep5yno/) removing this launch option
* **-high** : `high` is a priority mode in Windows that is only recommended for short-lived, time critical threads. It can unbalance resource usage and decrease performance. Close applications on your PC instead or use [Steam Priority Launcher](https://github.com/Leo40Git/SteamPriorityLauncher) to automatically set TF2 to Above Normal priority instead.
* **-reuse** : technically will help in situations where the OS is slow to reopen sockets but in practice useless and only good for causing crashes if you host a server and run the game on the same PC
* **-NOPROCESSHEAP** : this was a workaround for a bug that only happened for a short time in CS:GO, and it decreases performance. There is absolutely no reason to use this anymore
* **-nodns** : there is no benefit to turning this off. It will just prevent you from connecting to servers using an address instead of an IP.
* **-nowatchdog** : only used on dedicated servers and even then, there's no point in turning it off
* **-disable_d3d9_hacks** : these "hacks" are basically extra stuff allowed within DX9 with no current standard function, so instead they are used to communicate directly with drivers to let them know of certain features to adjust. It's only useful to use for compatibility testing or development, and there's nothing to suggest that this would ever be helpful.
* **-limitvsconst** : limits the hardware vertex shader constants to 256, possibly below hardware capabilities, which does save a bit of resources. But, with more constants available, faster shader modes can be used
* **+map_background** : Team Fortress 2 has a much more advanced preload system now, so map backgrounds are not needed. If you are using them to preload mods, or just for looks, that's fine

## Unused launch options

* **-noipx** : does not exist and never existed in Source
* **-heapsize** : does not exist. It never really worked in Source and was removed in an [old update](https://store.steampowered.com/oldnews/4371)
* **-dxlevel 98** : this is only supported on Xbox 360. Will fallback to `-dxlevel 95` on PC
* **-dxlevel 82** : this was an old DXLevel only used by certain ancient-by-today's-standards NVIDIA cards. It does not do anything anymore
* **+mat_dxlevel** : ignored in favor of the `-dxlevel` launch option, which will properly set configuration files for your DXLevel selection
* **-tickrate** : this does not work in TF2 without modifications to the game and causes bugs with various mechanics when added
* **-USEALLAVAILABLECORES** : this is a launch option for Unreal Engine games like Fortnite. It goes without saying that it will not work in Source, and anyone recommending you this launch option likely has no idea what's going on.
* **-nomansky** : yes, there are legitimately people who think for some reason any launch option with "no" in front of it will boost performance, so much so that they don't notice that this commonly copied around launch option is named after an unrelated game.
* **-no_texture_steal** : not sure who is stealing your textures, but unfortunately this launch option can't stop them

## Resolution and windows launch options

* **-fullscreen -w -h -full -sw -window -windowed -width -height**

These launch options may be creating an improper video mode, which is not preferred by the material system and can reduce performance. Try settings these options through the settings window instead.

## Bad CVars

* `cl_rumblescale 0` : `-nojoy` already disables this, and setting it to 0 has little to no benefit.
* `in_usekeyboardsampletime ` : Not used unless you use keylook, and you probably would not want this off if you did.
* `rate 60000` : This is lower than the TF2 default rate of `80000`. TF2 default network settings are already on the low end. Why would you set rate lower, especially when you're increasing packet rates? (`cl_updaterate 66`, `cl_cmdrate 66`)?
* `net_queued_packet_thread 581304` : Will forcefully add lag to client packets.
* `cl_interp 0.033` : This is a typo that was made somewhere along the way. The correct client interp is `cl_interp_ratio 2;cl_interp 0.0303`. This is equal to 2 / 66.
* `cl_interp 0.0152` : Although valid in some cases and not a misconception, it's worth noting that this setting means you will be subject to inaccurate extrapolation which is not in line with the server's history, all for getting lower visual latency on entity positions within a few milliseconds, which doesn't matter when positions cannot be substantially different within that time. Instead, you will want to make sure your entity positions are at least in line with the server's history as that is substantially more important for lag compensation and your own perception when predicting position based on velocity/trajectory. Thus, it's recommended only for use with projectiles and not hitscan, and only if you have a stable enough connection to support it.
* `mat_max_worldmesh_vertices 512` : The minimum value for this is 1024, not 512. This also increases the number of meshes used for the world, while reducing mesh complexity. This trade-off is only worth it for very, very bad GPUs like integrated graphics cards with no or poor hardware accelerated transform and vertex shader support.
* `mat_forcehardwaresync 0` : This makes the engine produce frames out of sync from the GPU processing, increasing input lag.
* `mem_max_heapsize 2048` : No need to adjust the cap for the heap to be wildly large, and the memory system initializes before this variable can apply anyway. If it did work, Source already determines the best value from your memory size and caps it using this console variable. Setting it high will [take away memory](https://github.com/ValveSoftware/Source-1-Games/issues/1543#issuecomment-520534294) from other things and also increase pause times for memory management.
* `datacachesize 512` : No need to adjust this to be wildly large, Source can decide the best value, and if you increase it for no reason, you'll reduce the heap available for other things other than the datacache.
* `sv_forcepreload`/`cl_forcepreload` : [cl_forcepreload was removed](https://www.teamfortress.com/post.php?id=19733) - "Fixed two most common forms of framerate stuttering / hitching when using popular FPS configs". It has also been called [cl_massive_hitches_at_surprising_times 1](https://www.reddit.com/r/GlobalOffensive/comments/adq2a4/never_install_csgo_on_an_old_hard_drive/edlbh3d/) by a Valve employee.
* `rope_averagelight 0` : Setting this to 0 loops through cubemaps to set ropes to use maximum intensity rather than the already available average intensity, so it reduces performance.
* `r_PhysPropStaticLighting 0` : This disables caching static lighting on props.
* `r_lod 2` : This forces everything to LOD 2, when the lowest quality is LOD 7. Set this to `r_lod -1` and let `r_rootlod` handle base quality while still allowing for lower qualities to be used at a distance.
* `voice_fadeouttime 0` : makes audio crackle in some cases

## Unused CVars

* `mat_shadowstate` : Does not exist.
* `g_ragdoll_fadespeed 0;g_ragdoll_lvfadespeed 0` : Not used. If it did work, setting it to 0 would make ragdolls never fade.
* `snd_mix_async 1` : unfortunately does nothing, only for Xbox 360
* `mp_usehwmvcds` : Not used.
* `mat_parallaxmap` : Not used.
* `r_threaded_client_shadow_manager` : Not used.
* `r_threaded_renderables` : Not used.
* `mat_wateroverlaysize` : Not used, debug only command.
* `mat_framebuffercopyoverlaysize` : Not used, debug only command.
* `r_drawopaquestaticpropslast 0` : Not used, and resulted in no change in rendering when it was used.
* `r_decal_cullsize` : Not used, but previously was used long ago to use the CPU to scan for small decals to stop rendering
