---
description: Obtén respuestas a preguntas frecuentes sobre mastercomfig.
...

# Preguntas frecuentes

## ¿Cuál es la manera de hacer las cosas de mastercomfig?

Algunas personas a menudo se frustan al inicio con mastercomfig, ya que no funciona como una config tradicional, y cuando intentas usarlo como uno, encontrarás algunos problemas.

En general, piensa en mastercomfig como «capas» en lugar de cosas que debes editar directamenter. Editas cosas sustituyendo cosas en tu «capa» de sobreescritura (u «override») de usuario. Tu capa de usuario consiste de una capa de módulos de usuario, capa de autoexec, capa de override del juego y capa de config de clase. Los módulos sobreescriben la capa de módulos de mastercomfig/preset. La capa de autoexec sobreescribe la capa de mastercomfig/addons. La capa de override  del juego sobreescribe los overrides de juego de mastercomfig (se ejecutan al unirse a una partida/cada vez que cambias de clase) y las configuraciones de red por clase, para todas las clases. La capa de config de clase sobreescribe los overrides del juego de mastercomfig (los configs de clase se ejecutan luego de los overrides del juego) y las configuraciones de red por clase, para una sola clase.

Este enfoque de capas significa que las configuraciones del config son más gestionados (es decir, la mayoría de las cosas están hechas para ti, y tú cambias algunas cosas con base a tus preferencias, así las configuraciones no hacen conflicto para una mejor estabilidad y rendimiento), y contenidos (puedes fácilmente cambiar a una nueva versión de mastercomfig, y tus capas se mantendrán en tu carpeta de overrides, por lo que no tendrás que reeditar nada cuando cambies de versión). Véase las siguientes preguntas para más detalles.

Con este enfoque, verás que estarás leyendo más documentación en lugar de estar escarbando en archivos de config, verificando si puedes hacer algo o cambiar una configuración al encontrar algo que te gustaría cambiar. Sin embargo, la fuente de GitHub es una buena referencia para algunas cosas. Por ejemplo, puedes ver los numerosos comentarios dentro del [comfig.cfg](https://github.com/mastercomfig/mastercomfig/blob/release/config/mastercomfig/cfg/comfig/comfig.cfg) principal para obtener información sobre configuraciones dentro de mastercomfig, además de cómo sobreescribir cosas individuales a un nivel más fino que con módulos. ¡Pero ten cuidado acerca de conflictos de compatiibildad entre las diferentes variables de consola en este caso! conflicts between different console variables in this case! Puedes ver qué módulos se usan [en tu preset](https://github.com/mastercomfig/mastercomfig/tree/release/config/cfg/presets) para que solo sobreescribas los módulos que necesites.

## ¿Porqué mastercomfig usa un VPK?

mastercomfig no es solo un archivo de configuración como configs de FPS antiguos los cuales solo usan autoexec.cfg.
Es un mod de scripting de rendimiento y personalización completo el cual requiere varios archivos personalizados para funcionar.

**Aquí hay algunos de las características que mastercomfig obtiene al ser un mod en lugar de un archivo de configuración:**

* Sobreescritura de dxsupport, lo cual desbloquea `r_drawropes`, `fx_drawimpactdebris`, `fx_drawimpactdust`, `fx_drawimpactspark`, `tf_impactwatertimeenable`, `dsp_off`, `cl_particle_retire_cost` y `mat_slopescaledepthbias_decal`

  * Estos permiten mejoras de rendimiento para cuerdas, partículas, sonido, y corregir un error donde 1 calco<!-- nombre oficial en el juego --> aún aparece incluso si los calcos están desactivados.

* [Scripts de regeneración de clase](#why-does-mastercomfig-override-my-class-configs), los cuales permiten que se ejecuten scripts periódicamente durante una partida.

* Diseño modular, el cual permite un sistema de overrides de usuario extensivo (módulos, addons, configs), en lugar de tener que rehacer cambios cada vez que mastercomfig se actualizad y no saber qué cambios hiciste al config base.

* Script `mm_override`, el cual permite corregir cuelgues al cargar para matchmaking de Competitivo.

* Configuración de precarga optimizado, el cual mejora el uso de memoria y tiempos de carga.

* No sincronización desordenada con la nube o propagación de guardado de config los cuales ocurren en la carpeta `cfg`.

Ahora, esto solo explica porqué mastercomfig es un mod, el cual también puede ser una carpeta, en lugar de porqué mastercomfig es un VPK.

**mastercomfig es específicamente un VPK porque:**

* Anima a las personas a usar el sistema modular de personalización en mastercomfig, el cual no necesita intervención manual en cada actualización para rehacer configuraciones personalizadas
* Fácil distribución, arrastrar y soltar en la carpeta custom, y recomendado por Valve:

!!! quote
    First, mount all user customizations. This will search for VPKs and subfolders
    and mount them in alphabetical order. The easiest way to distribute a mod is to
    pack up the custom content into a VPK. To "install" a mod, just drop it in this
    folder.

[Fuente](https://github.com/SteamDatabase/GameTracking-TF2/blob/master/tf/gameinfo.txt)

* Mejor rendimiento, como indica Valve:

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

[Fuente](https://github.com/SteamDatabase/GameTracking-TF2/blob/master/tf/custom/readme.txt)

!!! quote
    We search VPK files before ordinary folders, because most files will be found in
    VPK and we can avoid making thousands of file system calls to attempt to open files
    in folders where they don't exist. (Searching a VPK is much faster than making an operating
    system call.)

[Fuente](https://github.com/SteamDatabase/GameTracking-TF2/blob/master/tf/gameinfo.txt)

* Diseño modular, el cual permite configuraciones personalizadas contenidas y variantes de mastercomfig<!-- chequear esto -->

## ¿Porqué mastercomfig sobreescribe mis configs de clase?

Puedes mover fácilmente tus configs de clase creando una nueva carpeta llamada «overrides» junto a tus configs de clase, y luego arrastrarlos a dicha nueva carpeta.

mastercomfig tiene configs de clase debido a un error o característica faltante en Team Fortress 2, el cual no permite que `game.cfg` se ejecute en clientes al iniciar un juego.

Los configs de clase son también una manera confiable de ejecutar periódicamente algunos comandos durante una partida, lo cual se puede usar para corregir fugas de memoria.

**En lugar de ello, mastercomfig usa los configs de clase para:**

* Aliases de configuración de red específica de clase (`net_hitscan`, `net_projectiles`, `net_spy`) para personalización.
* Script `overrides/game_overrides.cfg` para configuraciones de clase globales.
* Alias `game_overrides_once_c` para ejecutar un script solo una vez por sesión de juego.
* Corregir [un problema de red](https://github.com/ValveSoftware/Source-1-Games/issues/2618) con autos de choque.
* Sobreescribir prop de detalle específico de mapa, distancias de desvanecimiento de agua, y modo de canal de sonido.
* Corregir el efecto de sonido de la cámara de muerte que se congela<!-- chequear esto --> a veces.
* Limpiar todos los calcos, incluyendo los permanentes, inaccesibles mediante otros comandos.
* Corregir errores de desincronización del cliente periódicamente sin interrumpir demos.
* Mejorar los tiempos de carga luego de la carga de la primera carga de mapa.
* Corregir casos donde mods de animaciones y modelos pueden parar de funcionar luego de varias cargas de servidores.
* Corregir problemas donde mods de animaciones y modelos podrían reiniciarse.

**mastercomfig sobreescribe los configs de clase porque:**

* Cada ruta en el juego solo puede tener un archivo asociado a él, debido a cómo Source maneja los mods.
* Instalación de arrastrar y soltar, especialmente para aquellos que no quieren meterse con configs.

## ¿Cómo puedo ayudar con mastercomfig?

Véase la [guía de soluciones rápidas](next_steps/quick_fixes.md) para más información.
