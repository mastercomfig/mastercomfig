# Linux
**Note: These instructions are only for Linux systems.**

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

## Native Libraries

**Warning: While unlikely, it is unknown whether using native libraries is safe to do due to VAC (Valve Anti-Cheat). Continue at your own risk
of having your account VAC banned, which is a permanent, non-negotiable ban that removes access to your
inventory and prevents you from connecting to VAC-secured servers.**

_This has nothing to do with mastercomfig. Mastercomfig is safe, and will not get you VAC banned._

Disabling the Steam runtime using through command line variables is not enough to use native libraries
on TF2 as the TF2 launcher script shades in some libraries.

Go to `TF2_FOLDER/bin` and delete `libSDL2-2.0.so.0`, and `libtcmalloc_minimal.so.4`.
Now, Team Fortress 2 will not be able to load these libraries. The system will have to
provide them, so make sure you have the 32-bit/multilib versions of `libtcmalloc` and `sdl2`.

It's unknown if you can be VAC banned for this, but it is modifying libraries, which should be
restricted by VAC. So, do it at your own risk. I am not responsible for any VAC bans you may receive.

## Disabling shader compilation on start
Although this config does allow for greater memory usage for the shader linking
that is run when the game launches, and removes outdated shader listings, some of you
may not want to wait at all for the shaders to self-compile (particularly if you're running an older graphics card circa ~2009) because the device may not allow for it in a suitable amount of time.

Disabling the shader linking **_will decrease performance_** and will increase
stutters as shaders are loaded on demand, or in some cases, they may not work at all.

However, for long game runs, having shader linking disabled will result in better
performance over a longer period of time, since useless shaders will never have to be loaded into memory.

To disable this shader process, simply make two empty files: `glbaseshaders.cfg` and `glshaders.cfg`,
then put them in `TF2_FOLDER/tf/custom/mastercomfig`.

You can also disable Steam's shader pre-caching, which downloads shaders that match your hardware configuration.
To disable this option go to `Steam > Settings > Shader Pre-Caching` and Uncheck "Enable Shader Pre-Caching".

To re-enable the shader process, simply delete `glshaders.cfg` and `glbaseshaders.cfg`.
