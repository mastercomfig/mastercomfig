---
description: Learn how to optimize your Windows OS for better performance.
...

# Windows

## Enable Hardware-accelerated GPU scheduling

A new feature in Windows 10 May 2020 Update (version 2004) is hardware-accelerated GPU scheduling, which lets the GPU handle its own task scheduling instead of Windows,
thereby reducing latency and improving performance. You can learn how to enable it with [this guide](https://www.neowin.net/news/how-to-enable-hardware-accelerated-gpu-scheduling-on-windows-10-may-2020-update/).

If you are curious about what this feature exactly does, you can read [this tech blog](https://devblogs.microsoft.com/directx/hardware-accelerated-gpu-scheduling/) from Microsoft for more details.

If you experience problems or reduced performance from this feature, turn it off and [submit feedback](https://aka.ms/submitgameperformancefeedback).

## Use High Performance power plan

Open Power Options and select the High Performance power plan, or the Ultimate Performance plan if you have Windows 10 Pro for Workstations. For AMD Ryzen users, use a Ryzen specific plan to correctly take advantage of CPPC2. Alternatively, a [custom Ryzen power plan](https://www.techpowerup.com/download/1usmus-custom-power-plan-ryzen-3000-zen-2/) can be used to potentially achieve higher boost clocks.

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
    This may not do much for TF2, as its optimizations are largely for TCP, which only happens during connection,
    with a small bit done for UDP, which is used during the actual game session.

## Disable Overlays

Big idea: disable as many overlays as possible. They interrupt the rendering process with their own, which can severely affect performance in many causes. Common examples of overlays are: Discord and Nahimic.

### Disabling Nahimic

Nahimic is an audio effects software preinstalled on some gaming laptops and desktops, from manufacturers like Alienware, Dell, MSI, and ASUS ROG. Its overlay is especially inefficient, and causes FPS drops and generally lower FPS even when it is turned off. It is notoriously hard to uninstall, so you will have better luck disabling the driver through the following steps:

1. Open Device Manager
2. Expand `Software Components`
3. Right click and disable anything along the lines of `A-Volute Audio Effects Component`.
4. Open Services.
5. Open Nahimic service.
6. Select `Startup type:` `Disabled`.

## Intel Panel Self Refresh

Intel Panel Self Refresh can ruin frame latency and timings, especially on hybrid (Optimus) laptops. Disable it Power options within your Intel graphics settings app.

## Driver latency optimization

Badly programmed kernel-mode device drivers might cause latency issues, which lead to problems such as frequent stuttering. The user must sniff out exactly which drivers are causing latency.

[Enabling Message Signaled Interrupts (PCIe MSI)](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/) for all drivers is a great way to lower DPC latency caused by drivers (ring0). If you have an NVIDIA card, you can use [NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/) to enable this, with the added benefit of fully customizing your driver install.

Use [LatencyMon](https://www.resplendence.com/latencymon) and [DPC Latency Checker](https://www.thesycon.de/eng/latency_check.shtml) to analyze latency issues caused by kernel-mode device drivers. If they report issues, try updating your drivers or installing alternate drivers.
