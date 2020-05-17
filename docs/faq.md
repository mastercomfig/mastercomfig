---
description: Get answers to frequently asked questions about mastercomfig.
---

# Frequently Asked Questions

## Why does mastercomfig use a VPK?
mastercomfig is not just a configuration file like older FPS configs which only use autoexec.cfg.
It is a complete performance and customization scripting mod which requires many custom files to work.

**Here are some of the features that mastercomfig gains, by being a mod rather a configuration file:**

* dxsupport overrides, which unlock `r_drawropes`, `fx_drawimpactdebris`, `fx_drawimpactdust`, `fx_drawimpactspark`, `tf_impactwatertimeenable`, `dsp_off`, `cl_particle_retire_cost` and `mat_slopescaledepthbias_decal`
    * These allow for performance improvements for ropes, particles, sound, and fixing a bug where 1 decal still appears even if decals are disabled
* [Class spawn scripts](#why-does-mastercomfig-override-my-class-configs), which allow for scripts to be run periodically during a match
* Mannpower map script, which fixes grappling hook ropes being invisible on lower settings
* Modular design which allows for an extensive user override system (modules, addons, configs), rather than having to redo edits every time mastercomfig updates
* `mm_override` script, which fixes crashes while loading for Competitive matchmaking
* Optimized preload configuration, which improves memory usage and load times
* No messy cloud sync or config saving propagation which happens in the `cfg` folder

Now, this only explains why mastercomfig is a mod, which can also be a folder, rather than explaining why mastercomfig is a VPK.

**mastercomfig is specifically a VPK because:**

* Encourages people to use the modular customization system in mastercomfig, which does not require manual intervention every update to redo user custom settings
* Easy distribution, and drag and drop into the custom folder, and recommended by Valve:

!!! quote
    First, mount all user customizations. This will search for VPKs and subfolders
		and mount them in alphabetical order. The easiest way to distribute a mod is to
		pack up the custom content into a VPK. To "install" a mod, just drop it in this
		folder.

* Better performance, as stated by Valve:

!!! quote
    When the game boots, this folder is automatically scanned for VPK files or
    subfolders. Each subfolder or VPK is added as a search path, so the files
    inside those VPK's or subfolders will override the default game files.
    Mounting a VPK to the filesystem is more efficient than adding a subfolder,
    as each time the engine needs to open a file, it will need to make a call to the
    operating system to search the folder. VPKs can therefore be searched by the engine
    much more efficiently. Each subfolder is a new search path that must be checked each
    time the engine tries to open a file. So, for optimal load times, always use VPK files
    and don't make any subfolders in this folder!

!!! quote
    We search VPK files before ordinary folders, because most files will be found in
		VPK and we can avoid making thousands of file system calls to attempt to open files
		in folders where they don't exist. (Searching a VPK is much faster than making an operating
		system call.)

* Modular design, which allows for contained custom settings and variants of mastercomfig

## Why does mastercomfig override my class configs?

You can easily move your class configs by creating a new user folder next to your class configs, and then dragging them all into that new user folder.

mastercomfig has class configs due to a bug/missing feature in Team Fortress 2, which does not allow for `game.cfg` to be executed on clients upon joining a game.

Class configs are also a reliable way to periodically run some commands during a match, which can be used to fix memory leaks.

**Instead, mastercomfig uses the class configs for:**

* class specific network setting aliases (`net_hitscan`, `net_projectiles`, `net_spy`) for easy customization
* `user/game_overrides` script for easy global class settings
* `game_overrides_once_c` alias for running a script only once per game session
* Fixing a networking issue with bumper cars (https://github.com/ValveSoftware/Source-1-Games/issues/2618)
* Clearing decals periodically, to improve performance (if supported by decals module)
* Overriding map specific detail prop and water fade distances

**mastercomfig overrides class configs because:**

* Every path in the game can only have one file associated with it, due to how Source handles mods
* Drag and drop installation, especially for those who do not want to mess with configs

## How can I get help with mastercomfig?

Check the [troubleshooting guide](next_steps/troubleshoot.md) for more info.
