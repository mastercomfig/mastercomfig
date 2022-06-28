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

## I/O Schedulers
The Linux kernel supports multiple I/O scheduler algorithms for storage devices such as `mq-deadline`, `bfq`, and `kyber`. Depending on the type and speed of your storage device, some of these algorithms may increase or decrase the latency of read requests, as well as overall throughput. See the [Arch Linux wiki](https://wiki.archlinux.org/title/Improving_performance#Input/output_schedulers) for more information.

## Virtual memory optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Virtual_memory) for information about improving virtual memory parameters.

## Native Libraries

Using native libraries can have many performance benefits, as well as fix issues like mouse sensitivity
and (sometimes) Wayland support. The automatic Steam runtime host library pinning is not enough to use native
libraries on TF2 as the game's launcher script shades in some libraries by itself. In order to force TF2 to
use a native library, the built-in library must be deleted and the system libraries have to be manually pinned to the runtime.

An example of a library that benefits greatly from this approach is SDL2. To use your systems version of SDL2,
go to `TF2_FOLDER/bin` and delete `libSDL2-2.0.so.0` (this will cause TF2 to fallback on the Steam Linux Runtime's
library pinning). Then, install a 32-bit version of SDL2 and pin the library to the runtime using one of these
commands - depending on your distribution

Debian/Ubuntu-based distributions:
```sh
sudo apt install apt install libsdl2-2.0-0:i386
ln -s /usr/lib/i386-linux-gnu/libSDL2-2.0.so.0 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/"
```

Arch-based distributions:
```sh
sudo pacman -S lib32-sdl2
ln -s /usr/lib32/libSDL2-2.0.so.0 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/"
```

Fedora:
```sh
sudo dnf install SDL2.i686
ln -s /usr/lib/libSDL2-2.0.so.0 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/"
```
