---
description: Learn how to optimize your Linux OS for better performance.
...

# Linux

!!! info
    These instructions are only for Linux systems.

## Kernel

Try a desktop oriented kernel like [Liquorix](https://liquorix.net/) or [Zen](https://github.com/zen-kernel).

## cpupower

Use either the `performance`, `schedutil` or `ondemand` governors when playing TF2 by using `cpupower frequency-set -g performance`, for example. You can see available governors for your CPU with `cpupower frequency-info`.

## GameMode

[GameMode](https://github.com/FeralInteractive/gamemode) is a handy utility released by Feral Interactive, which will change the CPU Governor from the default cpu governer to `performance`. Recent updates allow it to change a games' "nice priority", which will give the game more resources to work with.

## irqbalance

Balance IRQ interrupts across multiple cores by installing the `irqbalance` package on your distro and enabling the `irqbalance` service. This package is installed on most debian-based OS's by default, like Ubuntu and Linux Mint.

## Ananicy

You can install `schedtool` and [Ananicy](https://github.com/Nefelim4ag/Ananicy) and enable the `ananicy` to get automatically applied ruled based process priority balancing to improve resources allocated to TF2.

## Networking optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Improving_performance) for information about improving networking parameters for performance.

## Virtual memory optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Virtual_memory) for information about improving virtual memory parameters.

## Native Libraries

!!! warning
    While unlikely, it is unknown whether using native libraries is safe to do due to VAC (Valve Anti-Cheat). Continue at your own risk of having your account VAC banned, which is a permanent, non-negotiable ban that removes access to your inventory and prevents you from connecting to VAC-secured servers.

!!! note
    This has nothing to do with mastercomfig. mastercomfig is safe, and will not get you VAC banned.

Disabling the Steam runtime using through command line variables is not enough to use native libraries
on TF2 as the TF2 launcher script shades in some libraries.

Go to `TF2_FOLDER/bin` and delete `libSDL2-2.0.so.0`, and `libtcmalloc_minimal.so.4`.
Now, Team Fortress 2 will not be able to load these libraries. The system will have to
provide them, so make sure you have the 32-bit/multilib versions of `libtcmalloc` and `sdl2`.

It's unknown if you can be VAC banned for this, but it is modifying libraries, which should be
restricted by VAC. So, do it at your own risk. I am not responsible for any VAC bans you may receive.
