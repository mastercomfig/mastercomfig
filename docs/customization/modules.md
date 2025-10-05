---
description: Easily customize mastercomfig to get the exact stuff you want without memorizing tons of commands!
search:
  boost: 2
...

# Modules

Modules are groups of related commands with specific values for a certain use case or quality level.

## How to use

Modules are used in presets to set quality levels and can also be used in your very own `tf/cfg/overrides/modules.cfg` file to customize your config easily without searching for individual console variable values. You can find out what module levels your preset uses by [viewing their respective cfg file](https://github.com/mastercomfig/mastercomfig/tree/release/config/cfg/presets). To set a custom module level, put it in `overrides/modules.cfg`. For example:

```c
texture_quality=high
```

will set the texture quality to `high`.

!!! note
    If you do not have `overrides` folder, create one. The same goes for the `modules.cfg` file.

## Hardware usage levels

Each module comes listed with its usage intensity of the related feature for both CPU (processor) and GPU (graphics card), ranging from none, low, medium, and high.

These estimates will give you a rough idea about which settings you can balance for your specific setup and which settings adjustments can provide the highest impact.
These usage levels are merely a relative estimate, not a precise indicator of the performance impact.

## Check Module Level Selection

You can check what module level you have selected for a module by entering `module_level` into the console. For example, `textures_level` will output:

```c
texture_quality=high
```

or similar.

You can also view selected levels for all modules by entering `module_levels` into the console.

### Advanced

!!! warning
    These steps are entirely optional and are only for advanced customization.

#### Module level aliases

Modules are backed with aliases, so you can easily use them in advanced customization and scripting.

If you want to disable running a module entirely, you can put (for example) `alias texture_quality` in `overrides/modules.cfg`. This will prevent mastercomfig from running texture commands. An exception to this rule is the Snapshot Buffer module. To fully disabled it, you must use `snapshot_buffer=custom`.

Since module aliases act like normal commands, you can use them in the console to change game settings easily. For example, enter `textures_high` into the console to temporarily set your texture quality to high for that game session. You can reset your modules to what they were on startup by entering `run_modules` into the console.

#### Module user layer alias

The modules you choose in `overrides/modules.cfg` are executed by the `modules_c` alias.

This means that you can change this alias in the game and have multiple versions of your modules for different quality preferences you may have. You can apply these new modules using `apply_overrides`.

## Networking modules

### Packet Rate

Controls how fast you send to and receive from the server.

- **CPU usage:** medium
- **GPU usage:** none

Default setting: **`packet_rate=standard`** (all presets, except Destitute).

- **`packet_rate=congestion`**: A halved (33) packet rate for congested networks, usually bad Wi-Fi, or very slow CPUs.
- **`packet_rate=standard`**: The standard 66 packet rate which is the maximum for all normal servers.

### Snapshot Buffer

Controls how reliable to consider the snapshots you receive from the server to apply client-side buffering/smoothing between snapshot receives. **Also known as linear interpolation (lerp or interp).**

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`snapshot_buffer=auto`** (all presets).

- **`snapshot_buffer=auto`**: Automatically sets the best interpolation value per class. For hitscan classes (Scout, Heavy, Engineer and Sniper), this sets `snapshot_buffer_x1`. For projectile classes (Soldier, Pyro, Demoman and Medic), this sets `snapshot_buffer_off`. For Spy this sets `snapshot_buffer_x1`. **This is the recommended setting.**
- **`snapshot_bufffer=off`**: A dangerously minimal buffering time which does not have room for any networking or server delays or drops (**15ms lerp** when using `packet_rate=standard`, or **30ms lerp** when using `packet_rate=congestion`). There is almost no reason to use this option, except in LAN scenarios, as `snapshot_buffer=auto` will optimize buffering for each class.
- **`snapshot_buffer=x1`**: Safest option with minimal snapshot delay by buffering by an extra snapshot (**30ms lerp** when using `packet_rate=standard`, or **60ms lerp** when using `packet_rate=congestion`).
- **`snapshot_buffer=x2`**: Heavily protects against packet loss by buffering by 2 extra snapshots (**45ms lerp** when using `packet_rate=standard`, or **90ms lerp** when using `packet_rate=congestion`).
- **`snapshot_buffer=custom`**: Prevents mastercomfig from messing with interp.
- **`snapshot_buffer=anim`**: Adjusts the smoothing to be ideal for animations and NPCs rather than gameplay. You can use this for smoother offline recordings, single-player, etc.

### Packet Size

Controls how big packets are and how they are split up/compressed. It's unlikely that you will ever need to change this setting.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`packet_size=large`** (all presets).

- **`packet_size=small`**: Uses the smallest packet size that even the worst routers will process.
- **`packet_size=conservative`**: Uses a smaller, safe packet size that most routers will process.
- **`packet_size=large`**: Uses the max recommended packet size by Steam to avoid split packets.

### Bandwidth

Controls the max speed of packet sending to restrict it to your internet speed to prevent packet overflow. Values in bits (Kilobits or Megabits per second).

!!! note
    This does not increase data usage. It only restricts how quickly the game can send data.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`bandwidth=2.0Mbps`** (all presets).

- **`bandwidth=128Kbps`**: 128Kbps game traffic bandwidth.
- **`bandwidth=192Kbps`**: 192Kbps game traffic bandwidth.
- **`bandwidth=384Kbps`**: 384Kbps game traffic bandwidth.
- **`bandwidth=512Kbps`**: 0.5Mbps game traffic bandwidth.
- **`bandwidth=762Kbps`**: 0.8Mbps game traffic bandwidth.
- **`bandwidth=1.0Mbps`**: 1.0Mbps game traffic bandwidth.
- **`bandwidth=1.5Mbps`**: 1.5Mbps game traffic bandwidth.
- **`bandwidth=2.0Mbps`**: 2.0Mbps game traffic bandwidth.
- **`bandwidth=2.5Mbps`**: 2.5Mbps game traffic bandwidth.
- **`bandwidth=3.0Mbps`**: 3.0Mbps game traffic bandwidth.
- **`bandwidth=4.0Mbps`**: 4.0Mbps game traffic bandwidth.
- **`bandwidth=6.0Mbps`**: 6.0Mbps game traffic bandwidth.

### Downloads

Filters what custom content is allowed to be downloaded from the server.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`download=custom`** (all presets).

- **`download=custom`**: Whatever the user sets in the game settings.
- **`download=all`**: Download all custom files from servers.
- **`download=nosounds`**: Download everything but sounds from servers.
- **`download=mapsonly`**: Download only maps from servers.
- **`download=nothing`**: Do not download any custom files from servers.

## Graphics modules

### Model Quality

Controls how detailed models are.

- **CPU usage:** low
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`lod=low`**: Low model detail.
- **`lod=medium`**: Medium model detail.
- **`lod=high`**: High model detail.
- **`lod=ultra`**: Forces max model detail regardless of distance.

### Lighting

Controls lighting fidelity: dynamic lights, detailed lighting, light averaging, lightwarps, and ambient boost.

- **CPU usage:** medium
- **GPU usage:** high

Default setting: based on which preset you are currently using.

- **`lighting=very_low`**: No dynamic lightmaps or lightmap smoothing, and skips all movable lighting. No lightwarps.
- **`lighting=low`**: No dynamic lightmaps, and only applies ambient movable lighting. No lightwarps.
- **`lighting=medium`**: No dynamic lightmaps, and applies detailed movable lighting.
- **`lighting=high`**: 4 dynamic lightmaps, and applies detailed movable lighting.
- **`lighting=ultra`**: Maximum (32) dynamic lightmaps, and applies extremely detailed movable lighting.

### Shading

Controls advanced shading commands which cause a material system reload.

!!! warning
    Using any other option than **`shading=high`** can cause visual glitches in items and props. Mainly, this affects weapon War Paints and Australium weapons, but can also cause maps to render incorrectly.

- **CPU usage:** low
- **GPU usage:** high

Default setting: based on which preset you are currently using.

- **`shading=low`**: Disables bumpmaps and specular, and uses low quality shader fallbacks in some cases. Disables texture blending.
- **`shading=medium`**: Disables bumpmaps and specular, and uses low quality shader fallbacks in some cases.
- **`shading=high`**: Enables bumpmaps and specular.

### Phong Shading

Controls phong highlights for shading.

!!! warning
    Using **`phong=off`** can cause visual glitches or crashes in props on some maps.

- **CPU usage:** low
- **GPU usage:** high

Default setting: based on which preset you are currently using.

- **`phong=off`**: Uses diffuse shading.
- **`phong=on`**: Uses phong shading.
- **`phong=rim`**: Uses phong shading, with rimlighting.

### Shadows

Controls dynamic shadow quality. Shadow limits affect rendered shadows. Shadows above the limit will be blobby.

- **CPU usage:** high
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`shadows=off`**: No dynamic shadows.
- **`shadows=low`**: Blobby shadows.
- **`shadows=medium`**: Up to 11 high quality shadows.
- **`shadows=high`**: Up to 23 high quality shadows and limited NPC shadow distance
- **`shadows=ultra`**: Up to 160 ultra quality movable shadows and unlimited NPC shadow distance

### Flashlight

Controls flashlight support. Flashlights are not used in TF2, so you should keep it disabled unless you need it for a certain community server mod, like Slender, or some Deathrun servers.

!!! warning
    Turning on flashlight support will cause rendering artifacts on some maps, especially when Pyroland is enabled!

- **CPU usage:** low
- **GPU usage:** medium

Default setting: **`flashlight=off`** (all presets).

- **`flashlight=off`**: Disables flashlight support.
- **`flashlight=on`**: Enables flashlight support. If the `shadows` module is `off`, this will set it to the `low` option.

### Effects

Controls weapon effects, particles, and other miscellaneous effects

!!! note
    The way TF2 uses these settings is inconsistent and may not apply in all cases.

- **CPU usage:** medium
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`effects=very_low`**: Disables impact effects, water splash effects, weather particles, muzzle flashes, shell casing ejection, and temp ent collision. Collapses spawning particles into existing particles (including bullet tracers and flames) together, reduces particle density/quality. Disables monitors.
- **`effects=low`**: Disables impact effects, water splash effects, weather particles, muzzle flashes, shell casing ejection, and temp ent collision. Collapses spawning particles into existing particles (including bullet tracers and flames) together, reduces particle density/quality. Disables monitors.
- **`effects=medium`**: Disables weather particles, muzzle flashes, and shell casing ejection. Reduces particle density/quality. Disables monitors.
- **`effects=high`**: Uses full particle density/quality. 1K render resolution for monitors.
- **`effects=ultra`**: Uses full particle density/quality, and forces full simulation for all particles. 1K render resolution for monitors.

### Tracer Effects

Controls bullet tracer effects

- **CPU usage:** low
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`tracers=low`**: Disables first person tracers.
- **`tracers=medium`**: Enables first person tracers.
- **`tracers=high`**: Enables first person tracers and makes tracers thicker.

### Water

Controls water reflections.

- **CPU usage:** high
- **GPU usage:** high

Default setting: based on which preset you are currently using.

- **`water=very_low`**: Makes water solid. 32x water render resolution.
- **`water=low`**: Uses basic water with no reflections. 128x water render resolution. Fades out to low quality solid water at short ranges.
- **`water=medium`**: Uses standard water with basic reflections. 256x water render resolution. Fades out to low quality solid water at long ranges.
- **`water=high`**: Uses standard water with all reflections. 1K water render resolution. Fades out to low quality solid water at long ranges.
- **`water=ultra`**: Uses high quality water with all reflections. 2K water render resolution. Never fades out to low quality water.

### General Post-Processing

Controls standard post-processing effects.

- **CPU usage:** medium
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`post_processing=off`**: No post-processing.
- **`post_processing=low`**: Enables bloom in Valve's default style.
- **`post_processing=valve`**: Enables HDR and bloom in Valve's default style.
- **`post_processing=calm`**: Enables HDR and bloom with reduced "blow out" of bright lighting (recommended).
- **`post_processing=vivid`**: Enables HDR and bloom with glowing highlights.
- **`post_processing=washed`**: Enables HDR and bloom with an overall bright look.
- **`post_processing=dreamy`**: Enables HDR and bloom with surreal dreamy look.

### Color Filter

Controls post-processing color filters.

- **CPU usage:** none
- **GPU usage:** low

Default setting: **`color_filter=off`** (all presets).

- **`color_filter=off`**: No color filter
- **`color_filter=grayscale`**: Grayscale, no color
- **`color_filter=desaturated`**: Reduced saturation
- **`color_filter=warm`**: Warmer feeling colors
- **`color_filter=cool`**: Cooler feeling colors

### Pyrovision

Controls Pyrovision visual effects.

- **CPU usage:** none
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`pyrovision=low`**: Disables Pyrovision vignette and skybox SSAO depth of field.
- **`pyrovision=medium`**: Enables static Pyrovision vignette.
- **`pyrovision=high`**: Enables skybox SSAO depth of field and dynamic Pyrovision vignette.

### Romevision

Controls Romevision visual effects. For more info, [click here](https://wiki.teamfortress.com/wiki/Romevision).

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`romevision=off`** (all presets).

- **`romevision=off`**: Disables Romevision effects.
- **`romevision=on`**: Enables Romevision effects.

### Motion Blur

Controls blurring effect from rotation and movement.

- **CPU usage:** low
- **GPU usage:** low

Default setting: **`motion_blur=off`** (all presets).

- **`motion_blur=off`**: Turns off motion blur.
- **`motion_blur=low`**: Turns on motion blur but reduces it significantly.
- **`motion_blur=high`**: Motion blur fully enabled.

### Anti-Aliasing

Controls MSAA anti-aliasing.

!!! warning
    On Linux and macOS, enabling causes TF2 to do a slow full clear on AMD cards!

!!! warning
    On Linux, enabling may cause rendering errors with Wayland.

!!! warning
    On DirectX, enabling MSAA may increase input latency.

- **CPU usage:** none
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`anti_aliasing=off`**: Turns off anti-aliasing.
- **`anti_aliasing=msaa_2x`**: Enables MSAA 2x.
- **`anti_aliasing=msaa_4x`**: Enables MSAA 4x.
- **`anti_aliasing=msaa_8x`**: Enables MSAA 8x.

### Characters

Adjusts characters details.

!!! tip
    Facial animations will only work on `lod=medium` and higher.

- **CPU usage:** high
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`characters=very_low`**: Disables facial animations, no eyes or teeth.
- **`characters=low`**: Disables facial animations, enables eyes, disables teeth, disables eye movement and blinking.
- **`characters=medium`**: Enables smooth facial animations, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at medium range.
- **`characters=high`**: Enables extra smooth facial animations, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at any distance.

### General Decals

Controls bullet holes and overall decal support.

- **CPU usage:** medium
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`decals=off`**: Disables decals.
- **`decals=low`**: 9 max decals.
- **`decals=medium`** 32 max decals.
- **`decals=high`**: 80 max decals.
- **`decals=ultra`**: 2048 max decals.

### Model Decals

Controls blood on hurt players and some bullet decals on props.

- **CPU usage:** medium
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`decals_models=off`**: Disables model decals.
- **`decals_models=low`**: Allows up to 1 model decal.
- **`decals_models=medium`**: Allows up to 9 model decals.
- **`decals_models=high`**: Allows up to 50 model decals.

### Map Decals

Controls decals placed by the map author.

- **CPU usage:** none
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`decals_art=off`**: Disables map decals.
- **`decals_art=on`**: Enables map decals, and blocks full decal clearing done periodically.

### Spray Decals

Controls decals sprayed by players.

- **CPU usage:** none
- **GPU usage:** low

Default setting: **`sprays=off`** (all presets).

- **`sprays=off`**: Completely disables downloading, uploading and displaying sprays. Deletes temporary spray files on shutdown.
- **`sprays=on`**: Allows sprays, and blocks full decal clearing done by mastercomfig periodically. Deletes temporary spray files on shutdown. If the `decals` module is `off`, this will set it to the `low` option.
- **`sprays=keep`**: Allows sprays, and blocks full decal clearing done by mastercomfig periodically. Keeps temporary spray files on shutdown. If the `decals` module is `off`, this will set it to the `low` option.

### Gibs

Controls gibs created by player explosions.

- **CPU usage:** low
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`gibs=off`**: Disables gibs.
- **`gibs=low`**: Enables gibs.
- **`gibs=high`**: Enables gibs, and gibs can burn.

### Silly Gibs

Controls low violence mode.

- **CPU usage:** low
- **GPU usage:** low

Default setting: **`sillygibs=auto`** (all presets).

- **`sillygibs=auto`**: Automatically chooses the best silly gibs setting for performance (`on` if gibs are off, `off` if gibs are on).
- **`sillygibs=off`**: Normal gibs and blood.
- **`sillygibs=on`**: Turns on silly gibs mode. This means birthday style gibs, sparks instead of blood upon flesh bullet impact, some low violence assets (like blood on the Half-Zatoichi) and no blood spawned upon gibbing.

### Props

Controls the rendering of various small objects.

- **CPU usage:** high
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`props=low`**: Disables client-side props, disables foliage.
- **`props=high`**: Enables ambient lighting and decals on static props, enables a small number of client-side props, enables foliage at a reasonable distance with instant pop in.
- **`props=ultra`** Enables ambient lighting and decals on static props, enables a high number of client-side props, enables foliage at practically any distance.

### Ragdolls

Controls physics simulation and fading for bodies that spawn on death.

- **CPU usage:** high
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`ragdolls=off`**: Disables ragdolls by fading them out quickly.
- **`ragdolls=medium`**: Enables standard physics ragdolls.
- **`ragdolls=high`**: Enables ragdolls with collisions with a high fade out time, as well as special animations like decapitation.

### 3D Sky

Controls the enhanced 3D skybox that is present in most maps.

!!! warning
    Disabling 3D sky on some AMD graphics cards in DirectX can cause flickering when going underwater. Either use the `-vulkan` launch option, or turn on 3D sky.

- **CPU usage:** medium
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`3dsky=off`**: Disables 3D sky.
- **`3dsky=on`**: Enables 3D sky.

### Jigglebones

Controls cloth and joint physics on some items like the fish and skull bat.

- **CPU usage:** low
- **GPU usage:** none

Default setting: based on which preset you are currently using.

- **`jigglebones=off`**: Always disables jigglebones.
- **`jigglebones=on`**: Disables jigglebones only if the framerate is below 67FPS.
- **`jigglebones=force_on`**: Never disables jigglebones.

### Killstreak Sheens Speed

Controls how fast the animation is on the killstreak sheen glow for weapons.

!!! warning
    Killstreak sheens do not work on DirectX 8.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`sheens_speed=slow`** (all presets, except Destitute).

- **`sheens_speed=off`**: Skips updating sheen glow animation.
- **`sheens_speed=slow`**: Slow speed.
- **`sheens_speed=medium`**: The standard speed.
- **`sheens_speed=fast`**: Faster speed.

### Killstreak Sheens Tint Intensity

Controls how intense the color tint is on light reflections for the killstreak sheen glow for weapons.

!!! note
    This module will have no effect if `sheens_speed` is set to `off`.

!!! warning
    Killstreak sheens do not work on DirectX 8.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`sheens_tint=high`** (all presets).

- **`sheens_tint=low`**: Base tint.
- **`sheens_tint=medium`**: Small tint boost.
- **`sheens_tint=high`**: High tint boost.
- **`sheens_tint=full`**: Maximum tint boost.

### Texture Quality

Controls texture quality.

- **CPU usage:** low
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`texture_quality=low`**: Low texture quality.
- **`texture_quality=medium`**: Medium texture quality.
- **`texture_quality=high`**: High texture quality.
- **`texture_quality=very_high`**: Very High texture quality.
- **`texture_quality=ultra`**: Maximum texture quality.

### Texture Filtering

Controls texture smoothing/filtering.

- **CPU usage:** none
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`texture_filter=blocky`**: Blocky textures and world lighting
- **`texture_filter=trilinear`**: Trilinear filtering
- **`texture_filter=aniso2x`**: Anisotropic filtering 2x
- **`texture_filter=aniso4x`**: Anisotropic filtering 4x
- **`texture_filter=aniso8x`**: Anisotropic filtering 8x
- **`texture_filter=aniso16x`**: Anisotropic filtering 16x

### Ropes

Controls ropes for Mannpower grappling hook and decorations in maps.

- **CPU usage:** medium
- **GPU usage:** low

Default setting: based on which preset you are currently using.

- **`ropes=off`**: Disables ropes.
- **`ropes=low`**: Basic ropes.
- **`ropes=high`**: Ropes with smoothing and basic subdivisions.
- **`ropes=ultra`**: Ropes with max smoothing, increased subdivisions, collision checks and wind simulation.

### FPS Cap

Controls the highest frame rate (FPS/frames per second) that the game can reach.

You can set it lower for faster load times, more consistent frame rate, and lower power usage.

Setting it higher can reduce input delay.

!!! warning

    Although it is common advice to set this based on your display's refresh rate,
    the only thing you need to consider is having the FPS cap greater than or equal to
    your monitor's refresh rate to get the full effect of your monitor. Otherwise, it will
    solely be a determination based on your preference as described above.

!!! warning

    This module is only provided for general convenience and accessibility. The built-in FPS cap
    in Team Fortress 2 has precision problems depending on your CPU (such as Intel Skylake platform and above)
    as well as accuracy problems on Windows due to usage of millisecond timers. It is recommended you use
    a more reliable FPS cap tool, like [Rivatuner for Windows](https://www.guru3d.com/files-details/rtss-rivatuner-statistics-server-download.html) or [MangoHud for Linux](https://github.com/flightlessmango/MangoHud)
    and set `fpscap=unlimited` to disable the in-game FPS cap.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`fpscap=400`** (all presets).

- **`fpscap=powersaver`**: Sets FPS cap to half of your display's refresh rate.
- **`fpscap=30`**: Sets FPS cap to 30 FPS.
- **`fpscap=60`**: Sets FPS cap to 60 FPS.
- **`fpscap=75`**: Sets FPS cap to 75 FPS.
- **`fpscap=120`**: Sets FPS cap to 120 FPS.
- **`fpscap=144`**: Sets FPS cap to 144 FPS.
- **`fpscap=160`**: Sets FPS cap to 160 FPS.
- **`fpscap=165`**: Sets FPS cap to 165 FPS.
- **`fpscap=180`**: Sets FPS cap to 180 FPS.
- **`fpscap=200`**: Sets FPS cap to 200 FPS.
- **`fpscap=240`**: Sets FPS cap to 240 FPS.
- **`fpscap=300`**: Sets FPS cap to 300 FPS.
- **`fpscap=360`**: Sets FPS cap to 360 FPS.
- **`fpscap=400`**: Sets FPS cap to 400 FPS.
- **`fpscap=1000`**: Sets FPS cap to 1000 FPS (maximum safe value).
- **`fpscap=unlimited`**: FPS is not capped. Removes small overhead from capping FPS, but ensure that you never surpass 1000 FPS in meaningful game scenarios.

### VSync

Controls VSync, which removes screen tearing by syncing FPS to your monitor's refresh rate, at the cost of increased input latency.

!!! warning
    If your FPS does not reach your refresh rate, it will drop to the next lowest divisor (for example, 30FPS with a 60Hz monitor).

!!! tip
    It's recommended to keep this off, and use NVidia Adaptive VSync, which keeps VSync on only when the framerate is high enough, or NVidia Fast VSync (Enhanced Sync on AMD), which drops frames which would cause tearing, while having a much lower input latency compared to traditional VSync.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`vsync=off`** (all presets).

- **`vsync=off`**: Disables VSync.
- **`vsync=on`**: Enables VSync.

## HUD modules

### Player Model

Toggles the live 3D player model in the corner of your screen.

- **CPU usage:** low
- **GPU usage:** medium

Default setting: based on which preset you are currently using.

- **`hud_player_model=off`**: Disables the player model.
- **`hud_player_model=on`**: Enables the player model.

### Server Messages

Controls server / game mode text messages at the center of the screen.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`hud_server_text=on`** (all presets, except Destitute).

- **`hud_server_text=off`**: Disables server center text.
- **`hud_server_text=on`**: Enables server center text.

### Contracts

Controls the Contracts HUD seen at the top right corner of the screen during gameplay.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`hud_contracts=custom`** (all presets, except Destitute).

- **`hud_contracts=custom`**: Whatever the user set in the game settings.
- **`hud_contracts=hide`**: Hides the Contracts HUD.
- **`hud_contracts=all`**: Shows all Contracts available.
- **`hud_contracts=active`**: Only shows active Contracts.

### Panels

Controls health/player info panels and target ID translucency.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`hud_panels=high`** (all presets, except Low and Destitute).

- **`hud_panels=off`**: Disables health/player info panels that appear when looking at a player, disables target ID box.
- **`hud_panels=low`**: Enables health/player info panels that appear when looking at a player, enables opaque target ID box.
- **`hud_panels=high`**: Enables health/player info panels that appear when looking at a player, enables translucent target ID box.

### Avatars

Controls the display of target ID avatars.

- **CPU usage:** low
- **GPU usage:** none

Default setting: based on which preset you are currently using.

- **`hud_avatars=off`**: Disables avatars.
- **`hud_avatars=everyone`**: Enables the display of everyone's avatars.
- **`hud_avatars=friends`**: Enables the display of your friends' avatars.

### Match HUD

Toggles match status HUD at the top of the screen.

!!! note
    It's highly recommended to use this module, as the built-in console variable does not work properly when turning off directly.

- **CPU usage:** high
- **GPU usage:** none

Default setting: **`match_hud=on`** (all presets, except Destitute).

- **`match_hud=off`**: Disables match status HUD.
- **`match_hud=on`**: Enables match status HUD.

### Messages

Controls text chat, which displays player messages and voice messages.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`messages=on`** (all presets, except Destitute).

- **`messages=off`**: Disables text chat.
- **`messages=hide`**: Hides text chat.
- **`messages=on`**: Enables text chat.

### Killfeed

Controls death and objective notifications in the top right corner.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`killfeed=on`** (all presets, except Destitute).

- **`killfeed=off`**: Disables killfeed.
- **`killfeed=on`**: Enables killfeed.

### Killstreaks

Controls banners that appear at the top center of the screen, notifying you of a player's killstreak.

- **CPU usage:** medium
- **GPU usage:** none

Default setting: **`killstreaks=high`** (all presets, except Low and Destitute).

- **`killstreaks=off`**: Disables killstreak banner.
- **`killstreaks=low`**: Enables killstreak opaque banner.
- **`killstreaks=high`**: Enables killstreak translucent banner.

### HUD Achievements

Controls the HUD achievements tracker.

- **CPU usage:** low
- **GPU usage:** none

Default setting: **`hud_achievement=on`** (all presets, except Destitute).

- **`hud_achievement=off`**: Disables achievement tracker panel completely.
- **`hud_achievement=on`**: Enables support for achievement tracker panel.

### Console

Controls developer console.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`console=on`** (all presets, except Destitute).

- **`console=off`**: Disables developer console.
- **`console=on`**: Enables developer console.

### HTML MOTD

Controls HTML MOTDs. This includes ads, music player, rules, fancy server intros, etc.

This module is disabled by default, since server ads can cause lag spikes.

- **CPU usage:** low
- **GPU usage:** low

Default setting: **`htmlmotd=off`** (all presets).

- **`htmlmotd=off`**: Disables HTML MOTDs.
- **`htmlmotd=on`**: Enables HTML MOTDs.

### Outlines

Controls the outlines that appear through walls for players, some objectives (payload cart, CTF briefcase), and the Scottish Resistance's stickybombs.

!!! warning
    Outlines do not work on DirectX 8.

- **CPU usage:** high
- **GPU usage:** high

Default setting: based on which preset you are currently using.

- **`outlines=off`**: Disables nametags and all outlines.
- **`outlines=low`**: Enables nametags, disables all outlines.
- **`outlines=medium`**: Disables nametags and player outlines, enables all other outlines.
- **`outlines=high`**: Enables nametags and player outlines for spectating only, enables all other outlines.
- **`outlines=ultra`**: Enables nametags and all outlines.

### Map Background

Controls the live map that appears in the background of the main menu.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`dynamic_background=off`** (all presets).

- **`dynamic_background=off`**: No main menu map background on startup.
- **`dynamic_background=dustbowl`**: Live Dustbowl map main menu background on startup.

## Sound modules

### Sound

Controls a variety of sound effects, including spatialization and positional effects.

- **CPU usage:** high
- **GPU usage:** none

Default setting: based on which preset you are currently using.

- **`sound=low`**: Disables sound volume mixing, very low quality sound spatialization and positional effects, delays spatialization.
- **`sound=medium`**: Enables sound volume mixing, only basic sound spatialization and positional effects enabled, slightly delays spatialization.
- **`sound=high`**: Enables sound volume mixing, enables all sound spatialization and positional effects, slightly delays spatialization.
- **`sound=very_high`** Enables sound volume mixing, enables all sound spatialization and positional effects, immediately spatializes and traces sounds, enables pitch smoothing.
- **`sound=ultra`**: Enables sound volume mixing, enables enhanced sound spatialization and positional effects, immediately spatializes and traces sounds, enables pitch smoothing.

### Voice Chat

Controls player voice chat.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`voice_chat=on`** (all presets, except Destitute).

- **`voice_chat=off`**: Fully disables the in-game voice chat system, does not receive audio and cannot be re-enabled until reconnect.
- **`voice_chat=hidden`**: Disables the in-game voice chat system by blocking audio from playing.
- **`voice_chat=on`**: Enables the in-game voice chat system.

## Misc modules

### Party Join Mode

Controls the privacy of your Casual/Competitive matchmaking party.

!!! warning
    The Friends-Only restriction for parties can be bypassed, which means anyone can join your party if they have your Steam ID. Leaving your party open can result in anyone to join your party and spam party chat, causing lag, sound spam and other disruptions.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`party_mode=invite`** (all presets).

- **`party_mode=open`**: Open party (people can join anytime).
- **`party_mode=request`**: Request-only party (people can only join if you accept their request or if you invite them).
- **`party_mode=invite`**: Invite-only party (people can only join if you invite them).

### Logo

Controls the mastercomfig logo which appears in console on start up.

- **CPU usage:** none
- **GPU usage:** none

Default setting: **`logo=on`** (all presets, except Destitute).

- **`logo=off`**: Does not print logo in console on startup.
- **`logo=on`**: Prints logo in console on startup.
