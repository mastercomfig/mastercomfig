---
description: Learn how to optimize your Windows OS for better performance.
...

# Windows

## Enable Hardware-accelerated GPU scheduling

A new feature in Windows 10 May 2020 Update (version 2004), called hardware-accelerated GPU scheduling, lets the GPU handle its own task scheduling instead of Windows,
thereby reducing latency and improving performance. You can learn how to enable it with [this guide](https://www.neowin.net/news/how-to-enable-hardware-accelerated-gpu-scheduling-on-windows-10-may-2020-update/).

If you are curious about what this feature exactly does, you can read [this tech blog](https://devblogs.microsoft.com/directx/hardware-accelerated-gpu-scheduling/) from Microsoft for more details.

If you experience problems or reduced performance from this feature, turn it off and [submit feedback](https://aka.ms/submitgameperformancefeedback).

## Out of Memory due to Page File growth pressure

A known, [Microsoft confirmed](https://docs.microsoft.com/en-us/troubleshoot/windows-client/performance/slow-page-file-growth-memory-allocation-errors) bug in Windows is that the automatic page file growth set up may be too slow for applications which introduce high memory pressure during frequent memory allocations. It is recommended in these cases that you move to a [static page file size](https://docs.microsoft.com/en-us/troubleshoot/windows-client/performance/slow-page-file-growth-memory-allocation-errors#workaround).

## Use High Performance power plan

Open Power Options and select the High Performance power plan, or the Ultimate Performance plan if you have Windows 10 Pro for Workstations.

!!! tip
    It's recommended that you set Minimum processor state to its default value of 5%, instead of 100% as set in the high performance plans.
    You can find this in Power Options > Change plan settings > Change advanced power settings > Process power management > Minimum processor state.
    This is because forcing the processor to 100% power prevents cores from reaching their max boost due to the processor being at this all-core threshold.
    Giving more room for processor power to scale individually per core allows the OS to better balance power limits across all cores, especially in TF2's case of being a largely single threaded game.

## Disable Visual Effects

If you are on a slow/old PC, you can disable Windows' visual effects for better performance. Search for "Performance Information and Tools"
and then select "Adjust for best performance". You can also select options you'd like to keep, but keep in mind that these may reduce performance.

## Disable Nvidia Low Latency Mode

The Source Engine has its own frame syncing method, which is tuned for its material threading system.
By constraining queued frames in the driver, you can cause unexpected stalls in the frame submission process, which can reduce frame rate and increase input delay.
Because of this, it is recommended you keep Low Latency Mode in the Nvidia Control Panel to its default value of `Off` for Team Fortress 2.

## Disable Radeon Chill

Radeon Chill is a power saving feature that introduces a variable framecap. You can disable it in the Radeon Settings app:

1. Go to the Gaming tab.
2. Set global settings or only for Team Fortress 2 if you want to use Chill elsewhere.
3. Turn Chill off.

## Disable Overlays

Big idea: disable as many overlays as possible. They interrupt the rendering process with their own, which can severely affect performance in many cases. Common examples of overlays are: Discord and Nahimic. The Steam overlay is largely optimized, but may still cause problems on slow/old PCs.

### Disabling Discord overlay

1. Open Discord User Settings
2. Go to Activity Settings > Game Overlay
3. Turn off "Enable in-game overlay".

### Disabling Nahimic

Nahimic is an audio effects software preinstalled on some gaming laptops and desktops, from manufacturers like Alienware, Dell, MSI, and ASUS ROG. Its overlay is especially inefficient, and causes FPS drops and generally lower FPS even when it is turned off. If you have a version which comes with an overlay, you should remove it. It is notoriously hard to uninstall, so you will have better luck disabling the driver through the following steps:

1. Open Device Manager
2. Expand `Software Components`
3. Right click and disable anything along the lines of `A-Volute Audio Effects Component`.
4. Open Services.
5. Open Nahimic service.
6. Select `Startup type:` `Disabled`.

## Disable Unnecessary Services

You can use the [W10Privacy tool](https://www.winprivacy.de/deutsch-start/download/) to reduce disk load and other workloads to [improve performance](https://www.phoronix.com/scan.php?page=article&item=windows10-w10priv-wsl).

## Image Scaling

Both NVIDIA and AMD provide integrated image scaling technology which can reduce the rendered resolution at very little perceptible image quality reduction.
If you are looking to squeeze performance out of your games, especially at 1400p or 4k, you can use the Image Scaling in the NVIDIA Control Panel under 3D settings, or Radeon Super Resolution in AMD Software under Graphics settings.

## Intel Panel Self Refresh

Intel Panel Self Refresh can ruin frame latency and timings, especially on hybrid (Optimus) laptops. Disable it in Power options within your Intel graphics settings app.

## Disable Fullscreen Optimizations

Fullscreen optimizations is a feature in Windows 10 where fullscreen windows are instead made to be a low level borderless window, which gets equivalent or better than fullscreen performance with the fast alt-tabbing of windowed mode.

You can find more information on the [DirectX Developer Blog](https://devblogs.microsoft.com/directx/demystifying-full-screen-optimizations/) and in [this Reddit thread](https://old.reddit.com/r/Windows10/comments/645ukf/windows_10_cu_fullscreen_optimizations/dg330ub/?context=3).

You may encounter problems with it enabled, involving brightness, refresh rates or other display issues. If you are encountering these issues, open your game folder through Steam. Then, right click on `hl2.exe`, click Properties, go to the Compatibility tab, and then select the box that says `Disable Fullscreen Optimizations`.

If disabling fullscreen optimizations helps, [let Microsoft know](https://aka.ms/fullscreenoptimizationsfeedback), so they can improve it in the future.

## Networking optimization

Use [TCP Optimizer](https://www.speedguide.net/downloads.php) to optimize your internet settings.

1. Choose your connection speed with the slider at the top.
2. Choose the optimal setting at the bottom.
3. Click Apply Changes.

!!! note
    This may not do much for TF2, as its optimizations are largely for TCP but it does have a few UDP options.

## Driver latency optimization

Badly programmed kernel-mode device drivers might cause latency issues, which lead to problems such as stuttering. The user must find out exactly which drivers are causing latency.

[Enabling Message Signaled Interrupts (PCIe MSI)](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/) for all drivers is a great way to lower DPC latency caused by drivers (ring0). If you have an NVIDIA card, you can use [NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/) to enable this, with the added benefit of fully customizing your driver install.

Use [LatencyMon](https://www.resplendence.com/latencymon) and [DPC Latency Checker](https://www.thesycon.de/eng/latency_check.shtml) to analyze latency issues caused by kernel-mode device drivers. If they report issues, try updating your drivers or installing alternate drivers.
