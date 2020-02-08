# Windows

## Disable Xbox Game DVR
Xbox Game DVR is known to cap FPS to 60 or even 30FPS in some cases. [Disable it](https://us.battle.net/support/en/article/92046) to resolve this issue.

## Disable Fullscreen Optimizations
Source is known to be worse with fullscreen optimizations and thus you should disable it.

Open your game folder through Steam. Then, right click on `hl2.exe`, click Properties, go to the Compatibility tab, and then check the box that says `Disable Fullscreen Optimizations`.

## Use High Performance power plan
Open Power Options and select the High Performance power plan, or the Ultimate Performance plan if you have Windows 10 Pro for Workstations. For AMD Ryzen users, you may have a Ryzen specific plan. Use that.

## Disable Radeon Chill

Radeon Chill is a power saving feature that introduces a variable framecap. Disable it in the Radeon Settings app:

Go to the Gaming tab, then set global settings or for Team Fortress 2 only if you want to use Chill elsewhere and finally turn Chill off.

## Disable Unnecessary Services
You can use the [W10Privacy tool](https://www.winprivacy.de/deutsch-start/download/) to reduce disk load and other workloads to [improve performance](https://www.phoronix.com/scan.php?page=article&item=windows10-w10priv-wsl).

## Networking optimization

Use [TCP Optimizer](https://www.speedguide.net/downloads.php) to optimize your internet settings.

1. Choose your connection speed with the slider at the top.
2. Choose the optimal setting at the bottom.
3. Click apply changes.

## Driver latency optimization

Badly programmed kernel-mode device drivers might cause latency issues, which lead to problems such as frequent stuterring. The user must sniff out exactly which drivers are causing latency.    
Use [LatencyMon](https://www.resplendence.com/latencymon) and [DPC Latency Checker](https://www.thesycon.de/eng/latency_check.shtml) to analyze latency issues caused by kernel-mode device drivers. If they report issues, try updating your drivers or installing alternate drivers.  
Alternatively, you can [switch your (compatible) drivers to MSI mode](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/) and disable their interrupt limits, although this is for **advanced users only**.
