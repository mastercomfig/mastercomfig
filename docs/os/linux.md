---
description: Learn how to optimize your Linux OS for better performance.
...

# Linux

!!! info
    These instructions are only for Linux systems.

## Kernel

Try a desktop oriented kernel like [Xanmod](https://xanmod.org/).

## cpupower

Use either the `performance`, `schedutil` or `ondemand` governors when playing TF2 by using `cpupower frequency-set -g performance`, for example. You can see available governors for your CPU with `cpupower frequency-info`.

## GameMode

[GameMode](https://github.com/FeralInteractive/gamemode) is a handy utility released by Feral Interactive, which will change the CPU Governor from the default CPU governor to `performance`. Recent updates allow it to change a games' "nice priority", which will give the game more resources to work with.

## irqbalance

Balance IRQ interrupts across multiple cores by installing the `irqbalance` package on your distro and enabling the `irqbalance` service. This package is installed on most debian-based OS's by default, like Ubuntu and Linux Mint.

## Ananicy

You can install `schedtool` and [Ananicy](https://github.com/Nefelim4ag/Ananicy) and enable the `ananicy` to get automatically applied rule based process priority balancing to improve resources allocated to TF2.

## Networking optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Improving_performance) for information about improving networking parameters for performance.

## Virtual memory optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Virtual_memory) for information about improving virtual memory parameters.

## Native Libraries

Using native libraries on Linux can have many performance benefits, as well as fix some issues
such as mouse sensitivity not working as expected. The automatic Steam runtime host library pinning is
not enough to use some native libraries on TF2 as the TF2 launcher script shades in some of its' own.

Two of the libraries that the game will benefit the most from using their native 
version are `libSDL2` and `libtcmalloc`. To use your systems versions, go to `TF2_FOLDER/bin` and delete 
`libSDL2-2.0.so.0`, and `libtcmalloc_minimal.so.4`. Now, Team Fortress 2 will not be able to load these 
libraries and the system will have to provide them. Make sure you have `libtcmalloc` and `sdl2` installed, 
as well as add one of the following lines to your launch options - depending on your distribution:

Debian/Ubuntu-based distros:
```sh
LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libSDL2-2.0.so.0:/usr/lib/x86_64-linux-gnu/libtcmalloc_minimal.so.4:$LD_PRELOAD" %command%
```

Arch/Fedora-based distros:
```sh
LD_PRELOAD="/usr/lib64/libSDL2-2.0.so.0:/usr/lib64/libtcmalloc_minimal.so:$LD_PRELOAD" %command%
```
