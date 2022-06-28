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

Using native libraries can have performance benefits, as well as fixing issues like mouse sensitivity
and Wayland support. The automatic Steam runtime host library pinning is not enough to use native libraries
on TF2 as the TF2 launcher script shades in some libraries by itself.

The two libraries which benefit from this approach are SDL2 and tcmalloc. Go to `TF2_FOLDER/bin` and
delete `libSDL2-2.0.so.0`, and `libtcmalloc_minimal.so.4`. Now, Team Fortress 2 will not be able
to load these libraries. The system will have to provide them, so make sure you have the
32-bit/multilib versions of `libtcmalloc` and `sdl2`. To use them, you will need to pin each library
to the Steam runtime:

Debian/Ubuntu-based distributions:
```sh
ln -s /usr/lib/i386-linux-gnu/libSDL2-2.0.so.0 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/
ln -s /usr/lib/i386-linux-gnu/libtcmalloc_minimal.so.4 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/
```

Arch-based distributions:
```sh
ln -s /usr/lib32/libSDL2-2.0.so.0 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/
ln -s /usr/lib32/libtcmalloc_minimal.so.4 "$HOME/.steam/root/ubuntu12_32/steam-runtime/pinned_libs_32/
```
