---
description: Common misconceptions with TF2 that mastercomfig corrects.
---

# Misconceptions

## Bad launch options
* `-noipx` : Does not exist and never existed in Source.
* `-heapsize` : Does not exist. It never really worked in Source and was removed in an old update.
* `-nocrashdialog` : Does not improve FPS, plus it makes crashes harder to troubleshoot.
* `+exec autoexec` : autoexec.cfg is already ran on startup, there is no need to run it again
* `+map_background` : Team Fortress 2 has a much more advanced preload system now, so map backgrounds are not needed. If you are using them to bypass sv_pure through preloading, that's fine.
* `-dxlevel 98` : This is only supported on Xbox 360. Will fallback to `dxlevel 95` functionality on PC.
* `-dxlevel 82` : This was an old DXLevel only used by certain ancient-by-today's-standards NVIDIA cards. It does not do anything anymore.
* `-limitvsconst` : limits the hardware vertex shader constants to 256, possibly below hardware capabilities, which does save a bit of resources, but with more constants available, faster shader modes can be used
* `-threads` : The Source Engine automatically determines the value for this, and caps it at 3, due to performance issues with higher values. Valve also [recommends](https://www.reddit.com/r/GlobalOffensive/comments/5y8r7v/in_depth_discussion_of_the_threads_launch_option/dep5yno) removing this launch option.
* `-high` : High is a priority mode in Windows that is only recommended for short-lived, time critical threads. It can unbalance resource usage and decrease performance. Close applications on your PC instead.
* `-nod3d9ex` : Do not disable extensions which improve resource management, speeding up alt-tabs and improving memory usage! Ages ago, drivers did not support this option very well, and people recommended disabling it, but now, it is all good and there is no reason to use this launch option.
* `-NOPROCESSHEAP` : This was a workaround for a bug that only happened for a short time in CS:GO, and it decreases performance. There is absolutely no reason to use this anymore.

## Resolution and windows launch options
* `-fullscreen -w -h -full -sw -window -windowed -width -height`

These launch options may be creating an improper video mode, which is not preferred by the material system and can reduce performance. Try settings these options through the settings window instead.

## Bad CVars
* `mat_shadowstate` : Does not exist
* `mat_parallaxmap` : Not used
* `rate 60000` : This is lower than the TF2 default rate of `80000`. TF2 default network settings are already on the low-end. Why would you set rate lower, especially when you're increasing packet rates? (`cl_updaterate 66`, `cl_cmdrate 66`)?
* `cl_interp 0.033` : This is a typo that was made somewhere along the way. The correct interp is `cl_interp_ratio 2; cl_interp 0.0303`. This is equal to 2 / 66.
* `cl_interp 0.0152` : This means you will be subject to inaccurate extrapolation which is not in line with the server's history, all for getting lower visual latency on entity positions within a few milliseconds, which doesn't matter when positions cannot be substantially different within that time. Instead, make sure your entity positions are at least in line with the server's history as that is substantially more important for lag compensation and your own perception when predicting position based on velocity/trajectory.
* `mat_max_worldmesh_vertices 512` : The minimum value for this is 1024, not 512. This also increases the number of meshes used for the world, while reducing mesh complexity. This trade-off is only worth it for very, very bad GPUs, like integrated graphics cards with no or poor hardware accelerated transform and vertex shader support.
* `mat_forcehardwaresync 0` : Syncing frames is good, as it decreases input lag for just a few FPS. Also, this value is automatically determined based on the material queue mode.
* `mem_max_heapsize 2048` : No need to adjust the cap for the heap to be wildly large, and the memory system initializes before this variable can apply anyway. If it did work, Source already determines the best value from your memory size and caps it using this console variable. Setting it high will [take away memory](https://github.com/ValveSoftware/Source-1-Games/issues/1543#issuecomment-520534294) from other things, and also increase pause times for garbage collection.
* `datacachesize 512` : No need to adjust this to be wildly large, Source can decide the best value and if you just increase it for no reason, you'll reduce the amount of heap available for other things other than the datacache
* `sv_forcepreload`/`cl_forcepreload` : [cl_forcepreload was removed](https://www.teamfortress.com/post.php?id=19733 ) - "Fixed two most common forms of framerate stuttering / hitching when using popular FPS configs". It's also been called [cl_massive_hitches_at_surprising_times 1 by a Valve employee](https://www.reddit.com/r/GlobalOffensive/comments/adq2a4/never_install_csgo_on_an_old_hard_drive/edlbh3d/). Need I say more?
