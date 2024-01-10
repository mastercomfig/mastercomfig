---
description: Learn how to optimize your Linux OS for better performance.
...

# Linux

!!! info
    These instructions are only for Linux systems.

## Kernel

Try a desktop-oriented kernel like [XanMod](https://xanmod.org) or [linux-tkg](https://github.com/Frogging-Family/linux-tkg).

## cpupower

Use either the `performance`, `schedutil`, or `ondemand` governors when playing TF2 by using `cpupower frequency-set -g performance`, for example. You can see available governors for your CPU with `cpupower frequency-info`.

## GameMode

[GameMode](https://github.com/FeralInteractive/gamemode) is a handy utility released by Feral Interactive, which changes the CPU Governor from the default CPU governor to `performance`. Recent updates allow it to change a game's "nice priority", giving the game more resources to work with.

To run TF2 using GameMode through Steam launch options, open Steam, then:

1. Navigate to Library -> right-click Team Fortress 2 -> Properties -> General -> Launch Options.
2. Enter `gamemoderun %command% -your -tf2 -launch -options -go -here`

If launching TF2 from Lutris, "Enable Feral GameMode" is likely enabled by default, hence the Launch Options additions aren't used. You can check in Lutris via:

* Games -> right-click Team Fortress 2 -> Configure -> System options

## irqbalance

Balance IRQ interrupts across multiple cores by installing the `irqbalance` package on your distro and then enabling the `irqbalance.service`, likely by `sudo systemctl enable --now irqbalance.service`. 
This package is installed on most Debian-based OS by default, like Ubuntu and Linux Mint.

## Ananicy Cpp

You can install `schedtool` and [Ananicy Cpp](https://gitlab.com/ananicy-cpp/ananicy-cpp), then enable `ananicy-cpp.service` to automatically apply rule-based process priority balancing, improving resources allocated to TF2.

This, however, requires a [profile for TF2](https://github.com/Nefelim4ag/Ananicy/blob/master/ananicy.d/00-default/games/_steam.rules). Follow Ananicy Cpp's [profile import instructions](https://gitlab.com/ananicy-cpp/ananicy-cpp#community-rules) to use community profiles from the original Ananicy software, which can be downloaded [here](https://github.com/Nefelim4ag/Ananicy) or by installing the original Ananicy.

## Networking optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Improving_performance) for information about improving networking parameters for performance.

## I/O Schedulers
The Linux kernel supports multiple I/O scheduler algorithms for storage devices such as `mq-deadline`, `bfq`, and `kyber`. Depending on the type and speed of your storage device, some of these algorithms may increase or decrease the latency of read requests, as well as overall throughput. See the [Arch Linux wiki](https://wiki.archlinux.org/title/Improving_performance#Input/output_schedulers) for more information.

## Virtual memory optimization

See the [Arch Linux wiki](https://wiki.archlinux.org/index.php/Sysctl#Virtual_memory) for information about improving virtual memory parameters.

## Fixing bugs with newer SDL2

Using a newer version of libSDL2 can help fix issues in things such as mouse sensitivity, rendering, and support for newer display servers. The automatic Steam runtime host library pinning is not enough to use native libraries on TF2 as the game’s launcher script shades in some libraries by itself. In order to force TF2 to use the newer library, the built-in library must be deleted and the system library has to be manually pinned to the runtime.

To do this, go to `TF2_FOLDER/bin` and delete `libSDL2-2.0.so.0` (this will cause TF2 to fall back to the Steam Linux Runtime). Then, install a 32-bit version of SDL2 and pin the library to the runtime using one of these commands, depending on your distribution:

!!! note
    If you encounter any rendering issues or crashing when running under Wayland, prepending ```SDL_VIDEODRIVER=x11 %command%``` to your launch options may help
    
!!! note
    Users of the Flatpak version of Steam will not have to install a 32-bit version of SDL2 as the runtime already has a sufficient version pinned. Only removing the built-in version of SDL2 is required.


Ubuntu/Debian-based distributions:

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

## Game crashes when using a NVIDIA card

There have been [issues](https://github.com/ValveSoftware/Source-1-Games/issues/4553) reported by users with NVIDIA driver versions between 525.60.11 and 525.89.02-1 that cause the game to crash on startup. This was the result of a bug in NVIDIA's driver, which was fixed in 530.41.03. If unable to upgrade to this version, downgrading to 520.56.60 or lower is also an option.
