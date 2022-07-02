# Epic Games Store

## Fixing performance bug on EGS

On EGS, many people report performance problems and long load times in the launcher, while many others do not. After experimenting with some settings (to boost download speeds below), I may have found the cause for this. It seems like the HTTP thread sucks away time from other threads, which basically makes your load times inverse to your HTTP speeds possibly, as the UI cannot load due to long pause times from HTTP.

1. Go to `%localappdata%/EpicGamesLauncher/Saved/Config/Windows`
2. Open `Engine.ini`.
3. Paste in the following:

```ini
[HTTP]
; Limits the HTTP thread to only take time away for the duration it is able to do work
; Ref: https://twitter.com/phyronnaz/status/1489317573485383680
HttpThreadActiveFrameTimeInSeconds=0.00001
```

## Boosting Download Times

For many on stable and fast Internet connections, although EGS has decent speeds compared to other launchers, it does not reach the peaks we would like. For this guide, I will provide some settings to max out your download/install speeds on EGS, for gigabit fiber ethernet connections. Other connections may suffer with these settings, but the documentation provided may help you to better understand the available settings and tweak on your own. Feel free to contribute settings which work for your Internet!

1. Go to `%localappdata%/EpicGamesLauncher/Saved/Config/Windows`
2. Open `Engine.ini`.
3. Paste in the following:

```ini
[HTTP]
; Use low timeouts as recommended by Epic
; Ref: https://www.epicgames.com/help/en-US/technical-support-c90/general-support-c91/how-to-troubleshoot-connection-issues-a3510
HttpTimeout=10
HttpConnectionTimeout=10
HttpReceiveTimeout=10
HttpSendTimeout=10
; Limits the HTTP thread to only take time away for the duration it is able to do work
; Ref: https://twitter.com/phyronnaz/status/1489317573485383680
HttpThreadActiveFrameTimeInSeconds=0.00001
; Max number of concurrent libcurl requests. This is used as a cap for ChunkDownloads.
; You can vary this lower if needed for slower connections.
HttpMaxConnectionsPerServer=32

[Portal.BuildPatch]
; Set to the max we set, 32 seems like a good value to boost speeds on strong internet connections.
; You can vary this lower if needed for slower connections.
ChunkDownloads=32
; Connection scaling seems to be overly cautious, causing throttling on what you can adjust manually for yourself with the ChunkDownloads options.
ChunkDownloadsDisableConnectionScaling=True
; These settings determine how much memory is used for downloading and installing chunks.
; These can only go up to a combined 2048 and are each limited to a max of 1000.
; In my case, I prioritized more download chunks over disk chunks.
ChunkDbSourcePreFetchMinimum=768
ChunkDbSourcePreFetchMaximum=768
CloudSourcePreFetchMinimum=768
CloudSourcePreFetchMaximum=768
InstallSourceBatchFetchMinimum=512
InstallSourceBatchFetchMaximum=512
; Makes the speed displayed update at the maximum of 1 second, instead of over 10 seconds.
DownloadSpeedAverageTime=1
```

For more information, Epic Games Launcher uses the same ChunkDownloader and HTTP systems as in Unreal Engine, so its [source code](https://github.com/EpicGames/UnrealEngine/tree/ue5-main/Engine/Source/Runtime/Online/BuildPatchServices) and [documentation](https://docs.unrealengine.com/4.27/en-US/SharingAndReleasing/Patching/ChunkDownloader/Quickstart/) is available for everyone.
