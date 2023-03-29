---
description: Get answers to frequently asked questions about mastercomfig.
...

# Frequently Asked Questions

## What is the mastercomfig way of doing things?

Some people often get initially frustrated about mastercomfig since it doesn’t work like a traditional config, and when you try to use it like one, you may encounter more problems.

Generally, think of mastercomfig in “layers” rather than things you need to edit directly. You edit things by overriding things in your user overrides “layer”. Your user layer consists of a user modules layer, autoexec layer, game overrides layer and class config layer. Modules override the mastercomfig/preset modules layer. The autoexec layer overrides the mastercomfig/addons layer. The game overrides layer overrides mastercomfig game overrides (run on game join/every time you change class), and per-class networking settings for all classes. Class config layer overrides mastercomfig game overrides (class configs run after game overrides) and per-class networking settings for a single class.

This layered approach means that the config’s settings are more managed (that is, most things are done for you, with you changing a few things based on your preference so that settings don’t conflict for the best possible stability and performance), and contained (you can quickly drop in a new version of mastercomfig, and your layers will remain in your overrides folder, so you don’t have to re-edit anything whenever you change a version). See the next few questions for more details.

With this approach, you’ll find yourself reading documentation more rather than digging through config files, checking to see how you can do something or change a setting when you encounter something you’d like changed. However, the GitHub source is a good reference for some things. For example, you can see the many comments within the main comfig.cfg for information about settings within mastercomfig and how to override individual things at a finer level than with modules. But be careful about compatibility conflicts between different console variables in this case! You can see what modules are used in your preset, so you only override the modules that you need.

## Why does mastercomfig use a VPK?

mastercomfig is not just a configuration file like older FPS configs which only use autoexec.cfg.
It is a complete performance and customization scripting mod that requires many custom files to work.

**Here are some of the features that mastercomfig gains, by being a mod rather than a configuration file:**

* dxsupport overrides, which unlocks `r_drawropes`, `fx_drawimpactdebris`, `fx_drawimpactdust`, `fx_drawimpactspark`, `tf_impactwatertimeenable`, `dsp_off`, `cl_particle_retire_cost` and `mat_slopescaledepthbias_decal`

    * These allow for performance improvements for ropes, particles, and sound, and fixing a bug where one decal still appears even if decals are disabled

* [Class spawn scripts](#why-does-mastercomfig-override-my-class-configs), which allow for scripts to be run periodically during a match

* Modular design which allows for an extensive user overrides system (modules, addons, configs), rather than having to redo edits every time mastercomfig updates and not know what edits you made from the base config

* `mm_override` script, which fixes crashes while loading for Competitive matchmaking

* Optimized preload configuration, which improves memory usage and load times

* No messy cloud sync or config saving propagation which happens in the `cfg` folder

Now, this only explains why mastercomfig is a mod, which can also be a folder, rather than why mastercomfig is a VPK.

**mastercomfig is specifically a VPK because:**

* Encourages people to use the modular customization system in mastercomfig, which does not require manual intervention every update to redo custom settings
* Easy distribution and drag and drop into the custom folder, and recommended by Valve:

!!! quote
    The easiest way to distribute a mod is to pack up the custom content into a VPK. 
    To "install" a mod, just drop it in this folder.

[Source](https://github.com/SteamDatabase/GameTracking-TF2/blob/master/tf/gameinfo.txt)

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

[Source](https://github.com/SteamDatabase/GameTracking-TF2/blob/master/tf/custom/readme.txt)

!!! quote
    We search VPK files before ordinary folders, because most files will be found in
    VPK and we can avoid making thousands of file system calls to attempt to open files
    in folders where they don't exist. (Searching a VPK is much faster than making an operating
    system call.)

[Source](https://github.com/SteamDatabase/GameTracking-TF2/blob/master/tf/gameinfo.txt)

* Modular design, which allows for contained custom settings and variants of mastercomfig

## Why does mastercomfig override my class configs?

You can easily move your class configs by creating a new overrides folder next to your class configs and then dragging them all into that new overrides folder.

mastercomfig has class configs due to a bug/missing feature in Team Fortress 2, which does not allow for `game.cfg` to be executed on clients upon joining a game.

Class configs are also a reliable way to periodically run some commands during a match, which can be used to fix memory leaks.

**Instead, mastercomfig uses the class configs for:**

* Class-specific network setting aliases (`net_hitscan`, `net_projectiles`, `net_spy`) for customization
* `overrides/game_overrides.cfg` script for global class settings
* `game_overrides_once_c` alias for running a script only once per game session
* Fixing [a networking issue](https://github.com/ValveSoftware/Source-1-Games/issues/2618) with bumper cars
* Overriding map-specific detail prop, water fade distances, and sound channel mode
* Fixing the freeze cam sound effect getting stuck sometimes
* Clearing all decals, including permanent ones inaccessible by other commands
* Fixing client desync bugs periodically without interrupting demos
* Improving load times after first map load
* Fixing cases where animation and model mods can stop working after many server loads
* Fixing issues where animation and models mods could be reset

**mastercomfig overrides class configs because:**

* Every path in the game can only have one file associated with it, due to how Source handles mods
* Drag and drop installation, especially for those who do not want to mess with configs

## How can I get help with mastercomfig?

Check the [Quick Fixes guide](next_steps/quick_fixes.md) for more info.
