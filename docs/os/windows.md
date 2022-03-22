---
description: Learn how to optimize your Windows OS for better performance.
...

# Windows

## Enable Hardware-accelerated GPU scheduling

A new feature in Windows 10 May 2020 Update (version 2004), called hardware-accelerated GPU scheduling, lets the GPU handle its own task scheduling instead of Windows,
thereby reducing latency and improving performance. You can learn how to enable it with [this guide](https://www.neowin.net/news/how-to-enable-hardware-accelerated-gpu-scheduling-on-windows-10-may-2020-update/).

If you are curious about what this feature exactly does, you can read [this tech blog](https://devblogs.microsoft.com/directx/hardware-accelerated-gpu-scheduling/) from Microsoft for more details.

If you experience problems or reduced performance from this feature, turn it off and [submit feedback](https://aka.ms/submitgameperformancefeedback).

## Disable Game Mode

Game Mode _may_ reduce performance and cause stutters/freezes. Read [this Guru3D article](https://www.guru3d.com/news-story/windows-10-game-mode-can-impact-fps-negatively-with-stutters-and-freezes.html) for more information and instructions on how to disable it if you are having issues with it.

## Disable Fullscreen Optimizations

Fullscreen optimizations is a feature in Windows 10 where fullscreen windows are instead made to be a low level borderless window, which gets near fullscreen performance with the fast alt-tabbing of windowed mode.

Source is known to be worse with fullscreen optimizations on some systems and thus you should disable it if you encounter problems.

Open your game folder through Steam. Then, right click on `hl2.exe`, click Properties, go to the Compatibility tab, and then select the box that says `Disable Fullscreen Optimizations`.

You can find more information on the [DirectX Developer Blog](https://devblogs.microsoft.com/directx/demystifying-full-screen-optimizations/) and in [this Reddit thread](https://old.reddit.com/r/Windows10/comments/645ukf/windows_10_cu_fullscreen_optimizations/dg330ub/?context=3).

If disabling fullscreen optimizations helps, [let Microsoft know](https://aka.ms/fullscreenoptimizationsfeedback), so they can improve it in the future.

!!! tip
    If you're using variable refresh rate (VRR) technology, like G-SYNC, disabling Fullscreen Optimizations may break it, depending on your monitor, drivers and graphics card. So, if you experience problems with VRR after this, try reverting the change.

## Use High Performance power plan

Open Power Options and select the High Performance power plan, or the Ultimate Performance plan if you have Windows 10 Pro for Workstations.

## Disable Radeon Chill

Radeon Chill is a power saving feature that introduces a variable framecap. You can disable it in the Radeon Settings app:

1. Go to the Gaming tab.
2. Set global settings or only for Team Fortress 2 if you want to use Chill elsewhere.
3. Turn Chill off.

## Disable Unnecessary Services

You can use the [W10Privacy tool](https://www.winprivacy.de/deutsch-start/download/) to reduce disk load and other workloads to [improve performance](https://www.phoronix.com/scan.php?page=article&item=windows10-w10priv-wsl).

## Networking optimization

Use [TCP Optimizer](https://www.speedguide.net/downloads.php) to optimize your internet settings.

1. Choose your connection speed with the slider at the top.
2. Choose the optimal setting at the bottom.
3. Click Apply Changes.

!!! note
    This may not do much for TF2, as its optimizations are largely for TCP but does have a few UDP options.

## Disable Overlays

Big idea: disable as many overlays as possible. They interrupt the rendering process with their own, which can severely affect performance in many causes. Common examples of overlays are: Discord and Nahimic.

### Disabling Nahimic

Nahimic is an audio effects software preinstalled on some gaming laptops and desktops, from manufacturers like Alienware, Dell, MSI, and ASUS ROG. Its overlay is especially inefficient, and causes FPS drops and generally lower FPS even when it is turned off. If you have a version which comes with an overlay, you should remove it. It is notoriously hard to uninstall, so you will have better luck disabling the driver through the following steps:

1. Open Device Manager
2. Expand `Software Components`
3. Right click and disable anything along the lines of `A-Volute Audio Effects Component`.
4. Open Services.
5. Open Nahimic service.
6. Select `Startup type:` `Disabled`.

## Intel Panel Self Refresh

Intel Panel Self Refresh can ruin frame latency and timings, especially on hybrid (Optimus) laptops. Disable it in Power options within your Intel graphics settings app.

## Driver latency optimization

Badly programmed kernel-mode device drivers might cause latency issues, which lead to problems such as frequent stuttering. The user must find out exactly which drivers are causing latency.

[Enabling Message Signaled Interrupts (PCIe MSI)](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/) for all drivers is a great way to lower DPC latency caused by drivers (ring0). If you have an NVIDIA card, you can use [NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/) to enable this, with the added benefit of fully customizing your driver install.

Use [LatencyMon](https://www.resplendence.com/latencymon) and [DPC Latency Checker](https://www.thesycon.de/eng/latency_check.shtml) to analyze latency issues caused by kernel-mode device drivers. If they report issues, try updating your drivers or installing alternate drivers.
