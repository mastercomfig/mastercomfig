---
description: Learn how to optimize your Linux OS for better performance.
...

# Linux

!!! info
    These instructions are only for Linux systems.

## Kernel

Try a desktop oriented kernel like [XanMod](https://xanmod.org) or [linux-tkg](https://github.com/Frogging-Family/linux-tkg).

## cpupower

Use either the `performance`, `schedutil` or `ondemand` governors when playing TF2 by using `cpupower frequency-set -g performance`, for example. You can see available governors for your CPU with `cpupower frequency-info`.

## GameMode

[GameMode](https://github.com/FeralInteractive/gamemode) is a handy utility released by Feral Interactive, which will change the CPU Governor from the default CPU governor to `performance`. Recent updates allow it to change a games' "nice priority", which will give the game more resources to work with.

To run TF2 using GameMode through Steam, open Steam, then:
* Library -> right-click Team Fortress 2 -> Properties -> General -> Launch Options: \
`gamemoderun %command% -your -tf2 -launch -options -go -here`

If launching TF2 from Lutris, "Enable Feral GameMode" is likely enabled by default, hence the Launch Options additions aren't used. You can check in Lutris via:
* Games -> right-click Team Fortress 2 -> Configure -> System options

## irqbalance

Balance IRQ interrupts across multiple cores by installing the `irqbalance` package on your distro then enabling the `irqbalance.service`, likely by `sudo systemctl enable --now irqbalance.service`. 
This package is installed on most Debian-based OS's by default, like Ubuntu and Linux Mint.

## Ananicy Cpp

You can install `schedtool` and [Ananicy Cpp](https://gitlab.com/ananicy-cpp/ananicy-cpp), then enable `ananicy-cpp.service` to automatically apply rule based process priority balancing, improving resources allocated to TF2.

This however requires a [profile for TF2](https://github.com/Nefelim4ag/Ananicy/blob/master/ananicy.d/00-default/games/_steam.rules). Follow Ananicy Cpp's [profile import instructions](https://gitlab.com/ananicy-cpp/ananicy-cpp#community-rules) to use community profiles from the original Ananicy software, which can be downloaded [here](https://github.com/Nefelim4ag/Ananicy) or by installing the original Ananicy.

## Networking optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Improving_performance) for information about improving networking parameters for performance.

## I/O Schedulers
The Linux kernel supports multiple I/O scheduler algorithms for storage devices such as `mq-deadline`, `bfq`, and `kyber`. Depending on the type and speed of your storage device, some of these algorithms may increase or decrease the latency of read requests, as well as overall throughput. See the [Arch Linux wiki](https://wiki.archlinux.org/title/Improving_performance#Input/output_schedulers) for more information.

## Virtual memory optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Virtual_memory) for information about improving virtual memory parameters.

## Native Libraries

Using native libraries can benefit performance, alongside fixing mouse sensitivity issues and providing better Wayland support.
The automatic Steam runtime host library pinning is not enough to use native libraries on TF2 as the game's launcher script shades in some libraries by itself. In order to force TF2 to use a native library, the built-in library must be deleted and the system libraries have to be manually pinned to the runtime.

An example of a library that benefits greatly from this approach is SDL2. To use a native version of SDL2, go to `TF2_FOLDER/bin` and delete `libSDL2-2.0.so.0` (this will cause TF2 to fallback to the Steam Linux Runtime).
Then, install a 32-bit version of SDL2 and pin the library to the runtime using one of these commands, depending on your distribution:

!!! warning
    When using Wayland, ```SDL_VIDEODRIVER=x11 %command%``` will need to be prepended to your launch options to avoid rendering issues
    Users of the Flatpak version of Steam will have to grant Steam access to the directory in which SDL2 is located. This can be done by setting the ```--filesystem``` Flatpak parameter which Steam uses to the relevant path.
    

Debian/Ubuntu-based distributions:
```sh
sudo apt install libsdl2-2.0-0:i386
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
