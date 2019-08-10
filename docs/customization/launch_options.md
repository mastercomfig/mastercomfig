# Launch Options

Right click Team Fortress 2 in your Steam library, click **Properties** and
click the **Set Launch Options...** button. In the window that appears, remove
anything that's in there and paste
`-novid -nojoy -nosteamcontroller -softparticlesdefaultoff -reuse -nohltv` into
the box and click ok.

Read below about optional launch options and choosing your own DXLevel.

## DXLevel Launch Options
**These launch options should be added to first launch, and then removed.**

DXLevel Launch options are very system dependent so you will only find the best one by testing it yourself.

However, `-dxlevel 95` is your best bet and works for most people.

### Windows (recommended dxlevel)
* **-dxlevel 95** : DirectX 9Ex

### Windows (alternative dxlevels)
* **-dxlevel 90** : Shader Model 2
* **-dxlevel 100** : DirectX 9Ex (max settings allowed, no GPU feature support checking)

### OpenGL (Linux and macOS) (recommended dxlevel)
* **-dxlevel 92** : OpenGL partial Shader Model 3

### OpenGL (Linux and macOS) (alternative dxlevel)
* **-dxlevel 90** : OpenGL Shader Model 2

## List of Launch Options
**Recommended**: `-novid -nojoy -nosteamcontroller -softparticlesdefaultoff -reuse -nohltv`

* **-novid** : disables Valve startup logo, saves time
* **-nojoy** : stops Joystick system from starting up, faster startup and less memory usage
* **-nosteamcontroller** : disable Steam controller system, faster startup, less memory usage and less input conflicts
* **-softparticlesdefaultoff** : disable scene depth blending for particles and sprites, more FPS
* **-reuse** :  allow network sockets to be reused when busy (sets `SO_REUSEADDR`), better network performance
* **-nohltv** : disables SourceTV hosting, faster startup and less memory usage

## Extra Launch Options
* **-console** : displays console on startup
* **-r_emulate_gl**: downgrades DirectX graphics features to what Team Fortress 2's OpenGL supports
* **-nostartupsound** : disable game music on main menu
* **-freq x** : forces your refresh rate for when TF2 does not automatically detect it. for example, if you have a 144Hz monitor, x would be 144, for `-freq 144`.
* **-particles 512** : limits beam count to the minimum of 512

## OpenGL Launch Options (Linux and macOS only)
* **displayindex x** : use the monitor at the specified display index. starts at `1`. `0` is the primary display (and the default).

### Linux Launch Options
* **-NoQueuedPacketThread**: disable the net queued packet thread, use with `net_queued_packet_thread 0`

## Niche Launch Options
* **-nouserclip** : uses software clipping instead of hardware user clip planes, FPS increase or decrease depends on your CPU+GPU
* **-nosound** : disables sound, no performance boost unless your drivers are slow
* **-small** : allow for resolutions smaller than 640x480

## Experimental Launch Options
* **-gl_amd_pinned_memory** : use `AMD_pinned_memory` for efficient device memory handling if supported. Experimental as its performance impact (negative or positive) is unknown. Linux only.
