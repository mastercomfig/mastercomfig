---
description: Obtén respuestas a preguntas frecuentes sobre mastercomfig.
...

# Preguntas frecuentes

## ¿Cuál es la manera de hacer las cosas de mastercomfig?

Algunas personas a menudo se frustan al inicio con mastercomfig, ya que no funciona como una config tradicional, y cuando intentas usarlo como uno, encontrarás algunos problemas.

En general, piensa en mastercomfig como «capas» en lugar de cosas que debes editar directamenter. Editas cosas sustituyendo cosas en tu «capa» de sobreescritura (o «override») de usuario. Tu capa de usuario consiste de una capa de módulos de usuario, capa de autoexec, capa de override del juego y capa de config de clase. Los módulos sobreescriben la capa de módulos de mastercomfig/preset. La capa de autoexec sobreescribe la capa de mastercomfig/addons. La capa de override  del juego sobreescribe los overrides de juego de mastercomfig (se ejecutan al unirse a una partida/cada vez que cambias de clase) y las configuraciones de red por clase, para todas las clases. La capa de config de clase sobreescribe los overrides del juego de mastercomfig (los configs de clase se ejecutan luego de los overrides del juego) y las configuraciones de red por clase, para una sola clase.

This layered approach means that the config's settings are more managed (that is most things are done for you, with you changing a few things based on your own preference, so that settings don't conflict for best possible stability and performance), and contained (you can easily drop in a new version of mastercomfig, and your layers will remain in your overrides folder, so you don't have to re-edit anything whenever you change a version). See the next few questions for more details.

With this approach, you'll find yourself reading documentation more rather than digging through config files, checking to see how you can do something or change a setting when you encounter something you'd like changed. However, the GitHub source is a good reference for some things. For example, you can see the many comments within the main [comfig.cfg](https://github.com/mastercomfig/mastercomfig/blob/release/config/mastercomfig/cfg/comfig/comfig.cfg) for information about settings within mastercomfig, as well as how to override individual things at a finer level than with modules. But be careful about compatibility conflicts between different console variables in this case! You can see what modules are used [in your preset](https://github.com/mastercomfig/mastercomfig/tree/release/config/cfg/presets) so you only override modules that you need.

## ¿Porqué mastercomfig usa un VPK?

mastercomfig no es solo un archivo de configuración como configs de FPS antiguos los cuales solo usan autoexec.cfg.
Es un mod de scripting de rendimiento y personalización completo el cual requiere varios archivos personalizados para funcionar.

**Aquí hay algunos de las características que mastercomfig obtiene al ser un mod en lugar de un archivo de configuración:**

* Sobreescritura de dxsupport, lo cual desbloquea `r_drawropes`, `fx_drawimpactdebris`, `fx_drawimpactdust`, `fx_drawimpactspark`, `tf_impactwatertimeenable`, `dsp_off`, `cl_particle_retire_cost` y `mat_slopescaledepthbias_decal`

  * Estos permiten mejoras de rendimiento para cuerdas, partículas, sonido, y corregir un error donde 1 calco<!-- nombre oficial en el juego --> aún aparece incluso si los calcos están desactivados.

* [Scripts de regeneración de clase](#why-does-mastercomfig-override-my-class-configs), los cuales permiten que se ejecuten scripts periódicamente durante una partida.

* Diseño modular, el cual permite un sistema de overrides de usuario extensivo (módulos, addons, configs), en lugar de tener que rehacer cambios cada vez que mastercomfig se actualizad y no saber qué cambios hiciste al config base.

* Script `mm_override`, el cual permite corregir cuelgues al cargar para matchmaking de Competitivo.

* Configuración de precarga optimizado, el cual mejora el uso de memoria y tiempos de carga

* No sincronización desordenada con la nube o propagación de guardado de config los cuales ocurren en la carpeta `cfg`.

Ahora, esto solo explica porqué mastercomfig es un mod, el cual también puede ser una carpeta, en lugar de porqué mastercomfig es un VPK.

**mastercomfig es específicamente un VPK porque:**

* Encourages people to use the modular customization system in mastercomfig, which does not require manual intervention every update to redo custom settings
* Easy distribution, and drag and drop into the custom folder, and recommended by Valve:

!!! quote
    First, mount all user customizations. This will search for VPKs and subfolders
    and mount them in alphabetical order. The easiest way to distribute a mod is to
    pack up the custom content into a VPK. To "install" a mod, just drop it in this
    folder.

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

You can easily move your class configs by creating a new overrides folder next to your class configs, and then dragging them all into that new overrides folder.

mastercomfig has class configs due to a bug/missing feature in Team Fortress 2, which does not allow for `game.cfg` to be executed on clients upon joining a game.

Class configs are also a reliable way to periodically run some commands during a match, which can be used to fix memory leaks.

**Instead, mastercomfig uses the class configs for:**

* Class specific network setting aliases (`net_hitscan`, `net_projectiles`, `net_spy`) for customization
* `overrides/game_overrides.cfg` script for global class settings
* `game_overrides_once_c` alias for running a script only once per game session
* Fixing [a networking issue](https://github.com/ValveSoftware/Source-1-Games/issues/2618) with bumper cars
* Overriding map specific detail prop, water fade distances, and sound channel mode
* Fixing the freezecam sound effect getting stuck sometimes
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
