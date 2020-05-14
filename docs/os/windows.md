---
description: Learn how to optimize your Windows OS for better performance.
---

# Windows

## Disable gore

Usually, configs use workarounds to hide models and some particles associates with gore.

However, these do not prevent the spawning logic of gore and in some cases, still allow some particles to be shown, or enable silly gibs.
What does block all gore is called [low violence mode](https://support.steampowered.com/kb_article.php?ref=5889-TIOV-0207).
Normally, this is only able to used by certain accounts in specific restricted countries.

On Windows only, you can enable low violence mode through the registry.

1. Open `regedit.exe`
2. Navigate to the registry folder: `HKEY_CURRENT_USER\Software\Valve\Source\tf\Settings`
3. Modify the value of `User Token 2` to `1`.
4. You now have true low violence mode enabled.

You now can also use the official TF2 low violence content (`tf2_lv`):

1. Open Steam console: <a href="steam://nav/console">steam://nav/console</a>
2. Enter `download_depot 440 444`
3. Wait for the depot to download.
4. Move the contents of `steamapps/content/app_440/depot_444\tf` (`tf2_lv_000.vpk` and `tf2_lv_dir.vpk`) to `steamapps/common/Team Fortress 2/tf`.
5. The low violence VPK will be added to search paths by low violence mode, and will be loaded by the game.

## Disable Game Mode

Game Mode may reduce performance and cause stutters/freezes. Read [this Guru3D article](https://www.guru3d.com/news-story/windows-10-game-mode-can-impact-fps-negatively-with-stutters-and-freezes.html) for more information, and instructions on how to disable it.

## Disable Fullscreen Optimizations
Fullscreen optimizations is a feature in Windows 10 where fullscreen windows are instead made to be a low level borderless window, which gets near fullscreen performance with the fast alt-tabbing of windowed mode.

Source is known to be worse with fullscreen optimizations on some systems and thus you should disable it if you encounter problems.

Open your game folder through Steam. Then, right click on `hl2.exe`, click Properties, go to the Compatibility tab, and then check the box that says `Disable Fullscreen Optimizations`.

More information: https://devblogs.microsoft.com/directx/demystifying-full-screen-optimizations/, https://reddit.com/r/Windows10/comments/645ukf/windows_10_cu_fullscreen_optimizations/dg330ub?context=3

If disabling fullscreen optimizations helps, [let Microsoft know](https://aka.ms/fullscreenoptimizationsfeedback) so they can improve it in the future.

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
3. Click Apply Changes.

!!! note
    This may not do much for TF2, as its optimizations are largely for TCP, which only happens during connection,
    with a small bit done for UDP, which is used during the actual game session.

## Driver latency optimization

Badly programmed kernel-mode device drivers might cause latency issues, which lead to problems such as frequent stuttering. The user must sniff out exactly which drivers are causing latency.    
Use [LatencyMon](https://www.resplendence.com/latencymon) and [DPC Latency Checker](https://www.thesycon.de/eng/latency_check.shtml) to analyze latency issues caused by kernel-mode device drivers. If they report issues, try updating your drivers or installing alternate drivers.
