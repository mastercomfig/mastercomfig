---
description: Easily customize mastercomfig to get the exact stuff you want without memorizing tons of commands!
...

# Modules

Modules are groups of related commands with specific values for a certain use case or quality level.

## How to use

Modules are used in presets to set quality levels and can also be used in your very own `tf/cfg/user/modules.cfg` file to customize your config easily without searching for individual console variable values. You can find out what module levels your preset uses by [viewing their respective cfg file](https://github.com/mastercomfig/mastercomfig/tree/release/config/cfg/presets). To set a custom module level, put it in `user/modules.cfg`. For example:

```c
textures=high
```

will set the texture quality to `high`.

!!! note
    If you do not have `user` folder, create one. The same goes for the `modules.cfg` file.

## Check Module Level Selection

You can check what module level you have selected for a module by entering `module_level` into console. For example, `textures_level` will output:

```c
textures=high
```

or similar.

You can also view selected levels for all modules by entering `module_levels` into console.

### Advanced

!!! warning
    These steps are entirely optional and are only for advanced customization.

#### Module level aliases

Modules are backed with aliases, so you can easily use them in advanced customization and scripting.

If you want to disable running a module entirely, you can put (for example) `alias textures` in `user/modules.cfg`. This will prevent mastercomfig from running texture commands.

Since modules aliases act like normal commands, they can also be used in console to easily change game settings. So you could enter `textures_high` into console to temporarily set your texture quality to high for that game session. You can reset your modules back to what they were on startup by entering `run_modules` into the console.

#### Module user layer alias

The modules you choose in `user/modules.cfg` are executed by the `modules_c` alias.

This means that you can change this alias in game, and have multiple versions of your modules for different quality preferences you may have. You can apply these new modules using `apply_user`.

## Networking modules

### SourceTV Compatibility

Ensures compatibility with SourceTV spectating.

Default setting: **`sourcetv=on`** (all presets).

* **`sourcetv=off`**: Reduces the latency of changing spectator targets, but breaks compatibility with SourceTV. Cannot be switched off until a game restart.
* **`sourcetv=on`**: Keeps compatibility with SourceTV.

### Packet Rate

Controls how fast you send to and receive from the server.

Default setting: **`packet_rate=standard`** (all presets, except Very Low).

* **`packet_rate=congestion`**: A halved (33) packet rate for congested networks, usually bad Wi-Fi, or very slow CPUs.
* **`packet_rate=standard`**: The standard 66 packet rate which is the maximum for all normal servers.

### Snapshot Buffer

Controls how reliable to consider the snapshots you receive from the server to apply client-side buffering/smoothing between snapshot receives. Also known as linear interpolation (lerp or interp).

Default setting: **`snapshot_buffer=low`** (all presets).

* **`snapshot_buffer=auto`**: Automatically sets the best interpolation value per class.
* **`snapshot_buffer=low`**: Fastest option with a minimal buffering time to guard against.
* **`snapshot_buffer=safe`**: Safest option with minimal snapshot delay by using every other snapshot.
* **`snapshot_buffer=high`**: Heavily protects against packet loss by using every 3rd snapshot.

### Packet Size

Controls how big packets are and how they are split up/compressed.

Default setting: **`packet_size=speed`** (all presets).

* **`packet_size=small`**: Uses the smallest packet size, that will most likely be processed by even the worst routers.
* **`packet_size=conservative`**: Uses a smaller, safe packet size that will most likely be processed by most routers, even lower end ones.
* **`packet_size=saver`**: This minimizes data usage by aggressively compressing packets and avoiding splitting packets (which have more data size overhead than a single packet).
* **`packet_size=speed`**: This prioritizes less CPU usage over data usage by disabling packet compression and avoiding split packets.

### Bandwidth

Controls the max speed of packet sending to restrict it to your internet speed to prevent packet overflow. Values in bits (Kilobits or Megabits per second).

!!! note
    This does not increase data usage, only restricts how quickly data can be sent.

Default setting: **`bandwidth=762Kbps`** (all presets).

* **`bandwidth=128Kbps`**: 128Kbps game traffic bandwidth.
* **`bandwidth=192Kbps`**: 192Kbps game traffic bandwidth.
* **`bandwidth=384Kbps`**: 384Kbps game traffic bandwidth.
* **`bandwidth=512Kbps`**: 512Kbps game traffic bandwidth.
* **`bandwidth=762Kbps`**: 762Kbps game traffic bandwidth.
* **`bandwidth=1.0Mbps`**: 1.0Mbps game traffic bandwidth.
* **`bandwidth=1.5Mbps`**: 1.5Mbps game traffic bandwidth.
* **`bandwidth=2.0Mbps`**: 2.0Mbps game traffic bandwidth.
* **`bandwidth=2.5Mbps`**: 2.5Mbps game traffic bandwidth.
* **`bandwidth=3.0Mbps`**: 3.0Mbps game traffic bandwidth.
* **`bandwidth=4.0Mbps`**: 4.0Mbps game traffic bandwidth.
* **`bandwidth=6.0Mbps`**: 6.0Mbps game traffic bandwidth.
* **`bandwidth=8.0Mbps`**: 8.0Mbps game traffic bandwidth. Absolute maximum allowed by the game.

### Downloads

Filters what custom content is allowed to be downloaded from the server.

Default setting: **`download=auto`** (all presets).

* **`download=auto`**: Whatever the user set in the game settings. By default, the game downloads all custom files from servers.
* **`download=all`**: Download all custom files from servers.
* **`download=nosounds`**: Download everything but sounds from servers.
* **`download=mapsonly`**: Download only maps from servers.
* **`download=none`**: Do not download any custom files from servers.

## Graphics modules

### Level of Detail

Controls how detailed models are.

Default setting: based on which preset you are currently using.

* **`lod=low`**: Low model detail.
* **`lod=medium`**: Medium model detail.
* **`lod=high`**: High model detail.
* **`lod=ultra`**: Forces high model detail regardless of distance.

### Lighting

Controls lighting fidelity: dynamic lights, how detailed lighting is, rimlights, light averaging, lightwarps, and ambient boost.

Default setting: based on which preset you are currently using.

* **`lighting=very_low`**: No dynamic lights. Skips all world lighting. No light brightness smoothing, lightwarps, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=low`**: No dynamic lights. Skips dim lights. No light brightness smoothing, lightwarps, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=medium`**: No dynamic lights. Skips very dim lights. No light brightness smoothing, lightwarps, rimlights or lighting brightness boost.
* **`lighting=medium_high`**: No dynamic lights. Fairly detailed lighting.
* **`lighting=high`**: 6 dynamic lights. Detailed lighting.
* **`lighting=very_high`**: 12 dynamic lights. Detailed lighting. Slight extra lighting brightness boost.
* **`lighting=ultra`**: 32 dynamic lights. Extremely detailed lighting. Extra lighting brightness boost.

### Lighting Ex

Control extended lighting commands which cause a material system reload. Be careful setting them to anything other than high, as it can reduce performance on modern PCs.

Default setting: **`lighting_ex=high`** (all presets, except Medium Low, Low and Very Low).

* **`lighting_ex=low`**: Phong off.
* **`lighting_ex=high`**: Phong on.

### Shadows

Controls shadow quality. Shadow limits affect rendered shadows. Shadows above the limit will be blobby.

Default setting: based on which preset you are currently using.

* **`shadows=off`**: No shadows.
* **`shadows=very_low`**: Blobby shadows.
* **`shadows=low`**: Up to 3 low quality shadows.
* **`shadows=medium`**: Up to 7 high quality shadows, and low robot/Halloween boss shadow distance. Uses lowest quality model to render shadows.
* **`shadows=high`**: Up to 11 high quality shadows, and medium robot/Halloween boss shadow distance. Uses lowest quality model to render shadows.
* **`shadows=very_high`**: Up to 23 high quality shadows, and high robot/Halloween boss shadow distance. Uses lowest quality model to render shadows.
* **`shadows=ultra`**: Up to 23 high quality shadows, and high robot/Halloween boss shadow distance. Uses highest quality model (at root LOD) to render shadows.

### Effects

Controls weapon and other miscellaneous effects.

!!! note
    The way TF2 uses these settings is inconsistent and may not apply in all cases.

Default setting: based on which preset you are currently using.

* **`effects=low`**: Disables shell casing ejection, disables muzzle flashes, disables first person tracers, disables water splashes, disables temp ent (syringe) collision.
* **`effects=medium`**: Disables shell casing ejection, disables muzzle flashes, shows first person tracers, enables water splashes, disables temp ent (syringe) collision.
* **`effects=high`**: Disables shell casing ejection, disables muzzle flashes, shows first person bullet tracers and makes bullet tracers thicker, enables water splashes.
* **`effects=ultra`**: Enables shell casing ejection, enables muzzle flashes, shows first person bullet tracers and makes bullet tracers thicker, enables water splashes.

### Water

Controls water reflections.

Default setting: based on which preset you are currently using.

* **`water=very_low`**: Makes water black.
* **`water=low`**: Makes water solid.
* **`water=medium`**: Uses standard water with no reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=medium_high`**: Uses standard water with basic reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=high`**: Uses standard water with all reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=very_high`**: Uses high quality water with all reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=ultra`**: Uses high quality water with all reflections. Never fades out to low quality water.

### Particles

Controls particle effects.

Default setting: based on which preset you are currently using.

* **`particles=very_low`**: Collapses spawning particles into existing particles (including bullet tracers and flames) together, disables weather particles, reduces particle density/quality, disables bullet impact flecks.
* **`particles=low`**: Disables weather particles, reduces particle density/quality, disables bullet impact flecks.
* **`particles=medium`**: Disables weather particles, reduces particle density/quality, enables bullet impact flecks.
* **`particles=high`**: Enables weather particles, uses full particle density/quality, enables bullet impact flecks.
* **`particles=ultra`**: Enables weather particles, uses full particle density/quality, enables the new bullet impact effects system, enables bullet impact flecks.

### General Post-Processing

Controls standard post-processing effects.

Default setting: based on which preset you are currently using.

* **`post_processing=off`**: No post-processing.
* **`post_processing=low`**: Enables basic color correction.
* **`post_processing=medium`**: Enables LDR bloom.
* **`post_processing=high`**: Enables standard HDR and bloom.

### Pyrovision

Controls Pyrovision visual effects.

Default setting: based on which preset you are currently using.

* **`pyrovision=low`**: Disables Pyrovision vignette and skybox SSAO depth of field.
* **`pyrovision=medium`**: Enables static Pyrovision vignette.
* **`pyrovision=high`**: Enables skybox SSAO depth of field, dynamic Pyrovision vignette.

### Motion Blur

Controls blurring effect from rotation and movement.

Default setting: **`motion_blur=off`** (all presets).

* **`motion_blur=off`**: Turns off motion blur.
* **`motion_blur=low`**: Turns on motion blur but reduces it significantly.
* **`motion_blur=high`**: Motion blur fully enabled.

### Anti-Aliasing

Controls additional anti-aliasing passes (a.k.a. [alpha to coverage](https://en.wikipedia.org/wiki/Alpha_to_coverage)) and the main hardware based MSAA anti-aliasing.

!!! warning
    On Linux and macOS, AMD cards will do a slow full clear when anti-aliasing is enabled!

Default setting: based on which preset you are currently using.

* **`anti_aliasing=off`**: Turns off all forms of anti-aliasing.
* **`anti_aliasing=msaa_2x`**: Enables alpha to coverage and MSAA 2x.
* **`anti_aliasing=msaa_4x`**: Enables alpha to coverage and MSAA 4x.
* **`anti_aliasing=msaa_8x`**: Enables alpha to coverage and MSAA 8x.

### Texture Filtering

Controls texture smoothing/filtering.

Default setting: based on which preset you are currently using.

* **`texture_filter=bilinear`**: Bilinear filtering
* **`texture_filter=trilinear`**: Trilinear filtering
* **`texture_filter=aniso2x`**: Anisotropic filtering 2x
* **`texture_filter=aniso4x`**: Anisotropic filtering 4x
* **`texture_filter=aniso8x`**: Anisotropic filtering 8x
* **`texture_filter=aniso16x`**: Anisotropic filtering 16x

### Characters

Adjust characters details.

!!! tip
    Facial animations will only work on `lod=medium` and higher.

Default setting: based on which preset you are currently using.

* **`characters=very_low`**: Disables facial animations, no eyes or teeth.
* **`characters=low`**: Disables facial animations, enables eyes, disables teeth, disables eye movement and blinking.
* **`characters=medium`**: Enables facial animations, enables eyes and teeth, disables eye movement and blinking, disables enhanced lip sync.
* **`characters=medium_high`**: Enables facial animations, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at short range.
* **`characters=high`**: Enables smooth facial animations, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at a slightly increased range.
* **`characters=ultra`**: Enables smooth facial animations, high quality models, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at all ranges.

### General Decals

Controls bullet holes and overall decal support.

!!! note
    In the Very Low preset, decals are forced invisible.

Default setting: based on which preset you are currently using.

* **`decals=off`**: Disables decals.
* **`decals=low`**: 9 max decals.
* **`decals=medium`** 32 max decals.
* **`decals=high`**: 80 max decals.
* **`decals=ultra`**: 256 max decals.

### Model Decals

Controls blood on hurt players and some bullet decals on props.

Default setting: based on which preset you are currently using.

* **`decals_models=off`**: Disables model decals.
* **`decals_models=low`**: Allow up to 9 model decals.
* **`decals_models=high`**: Allow up to 32 model decals.

### Map Decals

Controls decals placed by the map author.

Default setting: based on which preset you are currently using.

* **`decals_art=off`**: Disables map decals.
* **`decals_art=on`**: Enables map decals, and blocks full decal clearing done by mastercomfig periodically.

### Spray Decals

Controls decals sprayed by players.

Default setting: based on which preset you are currently using.

* **`sprays=off`**: Completely disables downloading, uploading and displaying sprays.
* **`sprays=on`**: Allows sprays, and blocks full decal clearing done by mastercomfig periodically. If the `decals` module is `off`, this will set it to the `low` level.

### Gibs

Default setting: based on which preset you are currently using.

* **`gibs=off`**: Disables gibs.
* **`gibs=low`**: Max of 2 gib parts.
* **`gibs=medium_low`**: Max of 4 gib parts.
* **`gibs=medium`**: Default number of gibs.
* **`gibs=high`**: Default number of gibs, gibs can burn.

### Silly Gibs

Default setting: **`sillygibs=auto`** (all presets).

* **`sillygibs=auto`**: Automatically chooses the best silly gibs setting for performance (`on` if gibs are off, `off` if gibs are on).
* **`sillygibs=off`**: Normal gibs and blood.
* **`sillygibs=on`**: Turns on silly gibs mode. This means birthday style gibs, sparks instead of blood upon flesh bullet impact, and no blood spawned upon gibbing.

### Props

Controls the rendering of various small objects.

Default setting: based on which preset you are currently using.

* **`props=low`**: Disables client side props like bottles, disables foliage, low quality prop models and invisible railings.
* **`props=medium`**: Disables client side props, disables foliage, default quality prop models.
* **`props=high`**: Enables ambient lighting and decals on static props, enables a small number of client side props, enables foliage at a reasonable distance with instant pop in, default quality prop models.
* **`props=ultra`** Enables ambient lighting and decals on static props, enables a high number of client side props, enables foliage at a very high distance with fade in, max quality prop models regardless of distance.

### Ragdolls

Control physics simulation and fading for bodies that spawn on death.

Default setting: based on which preset you are currently using.

* **`ragdolls=hidden`**: Makes ragdolls invisible, but keeps them in the map, decreasing performance over time.
* **`ragdolls=off`**: Disables ragdolls by fading them out quickly.
* **`ragdolls=medium`**: Enables standard physics ragdolls.
* **`ragdolls=high`**: Enables ragdolls with collisions with a high fade out time, as well as special animations like decapitation.

### 3D Sky

Controls the enhanced 3D skybox that is present in most maps.

Default setting: based on which preset you are currently using.

* **`3dsky=off`**: Disables 3D sky.
* **`3dsky=on`**: Enables 3D sky.

### Jigglebones

Controls cloth and joint physics on some items like the fish and skull bat.

Default setting: based on which preset you are currently using.

* **`jigglebones=off`**: Always disables jigglebones.
* **`jigglebones=on`**: Disables jigglebones only if the framerate is below 67FPS.
* **`jigglebones=force_on`**: Never disables jigglebones.

### Killstreak Sheens Speed

How fast the animation is on the killstreak sheen glow for weapons.

Default setting: **`sheens_speed=slow`** (all presets, except Very Low).

* **`sheens_speed=off`**: Skips updating sheen glow animation.
* **`sheens_speed=slow`**: Slow speed.
* **`sheens_speed=medium`**: The standard speed.
* **`sheens_speed=fast`**: Faster speed.

### Killstreak Sheens Tint Intensity

How intense the color tint is on the killstreak sheen glow for weapons.

Default setting: **`sheens_tint=high`** (all presets).

* **`sheens_tint=low`**: Base tint.
* **`sheens_tint=medium`**: Small tint boost.
* **`sheens_tint=high`**: High tint boost.
* **`sheens_tint=full`**: Maximum tint boost.

### Texture Quality

Controls texture quality.

Default setting: based on which preset you are currently using.

* **`textures=very_low`**: Low texture quality, blocky textures, disables texture blending.
* **`textures=low`**: Low texture quality, disables texture blending.
* **`textures=medium`**: Medium texture quality.
* **`textures=high`**: High texture quality.
* **`textures=very_high`**: Very High texture quality.

### Ropes

Controls ropes for Mannpower grappling hook and decorations in maps.

Default setting: based on which preset you are currently using.

* **`ropes=off`**: Disables ropes.
* **`ropes=low`**: Basic ropes.
* **`ropes=high`**: Ropes with smoothing and basic subdivisions.
* **`ropes=ultra`**: Ropes with max smoothing, increased subdivisions, collision checks and wind simulation.

### FPS Cap

Controls the highest frame rate (FPS/frames per second) that the game can reach.

You can set it lower for faster load times, more consistent frame rate, and lower power usage.

Setting it higher can reduce input delay.

!!! warning

    Although it is common advice to set this based on your display's refresh rate,
    the only thing you need to consider is having the FPS cap greater than or equal to
    your monitor's refresh rate to get the full effect of your monitor. Otherwise, it will
    solely a determination based on your preference as described above.

!!! warning

    This module is only provided for general convenience and accessibility. The built-in FPS cap
    in Team Fortress 2 has precision problems depending on your CPU (such as Intel Skylake platform and above)
    as well as accuracy problems on Windows due to usage of millisecond timers. It is recommended you use
    a more reliable FPS cap tool, like [Rivatuner](https://www.guru3d.com/files-details/rtss-rivatuner-statistics-server-download.html)
    and set `fpscap=unlimited` to disable the in-game FPS cap.

Default setting: **`fpscap=1000`** (all presets).

* **`fpscap=powersaver`**: Sets FPS cap to half of your display's refresh rate.
* **`fpscap=30`**: Sets FPS cap to 30 FPS.
* **`fpscap=60`**: Sets FPS cap to 60 FPS.
* **`fpscap=75`**: Sets FPS cap to 75 FPS.
* **`fpscap=120`**: Sets FPS cap to 120 FPS.
* **`fpscap=144`**: Sets FPS cap to 144 FPS.
* **`fpscap=160`**: Sets FPS cap to 160 FPS.
* **`fpscap=165`**: Sets FPS cap to 165 FPS.
* **`fpscap=180`**: Sets FPS cap to 180 FPS.
* **`fpscap=200`**: Sets FPS cap to 200 FPS.
* **`fpscap=240`**: Sets FPS cap to 240 FPS.
* **`fpscap=300`**: Sets FPS cap to 300 FPS.
* **`fpscap=360`**: Sets FPS cap to 360 FPS.
* **`fpscap=400`**: Sets FPS cap to 400 FPS.
* **`fpscap=1000`**: Sets FPS cap to 1000 FPS (maximum safe value).
* **`fpscap=unlimited`**: FPS is not capped. Removes small overhead from capping FPS, but ensure that you never surpass 1000FPS in meaningful game scenarios.

### OpenGL

Controls whether mastercomfig should apply OpenGL optimizations or not.

Default setting: **`opengl=default`** (all presets).

* **`opengl=skip`**: Skips applying OpenGL optimizations. Helpful for users who run on Windows, which does not have OpenGL.
* **`opengl=default`**: Applies OpenGL optimizations.

## HUD modules

### Player Model

Toggle the live 3D player model in the corner of your screen.

Default setting: based on which preset you are currently using.

* **`hud_player_model=off`**: Disables the player model.
* **`hud_player_model=on`**: Enables the player model.

### Panels

Toggle health/player info panels.

Default setting: **`hud_panels=on`** (all presets, except Very Low).

* **`hud_panels=off`**: Disables health/player info panels that appear when looking at a player.
* **`hud_panels=on`**: Enables health/player info panels that appear when looking at a player.

### Match HUD

Toggle match status HUD at the top of the screen.

!!! note
    It's highly recommended to use this module, as the built-in console variable
    does not work properly when turning off directly.

Default setting: **`match_hud=on`** (all presets, except Very Low).

* **`match_hud=off`**: Disables match status HUD.
* **`match_hud=on`**: Enables match status HUD.

### Messages

Controls text chat, which displays player messages and voice messages.

Default setting: **`messages=on`** (all presets, except Very Low).

* **`messages=off`**: Disables text chat.
* **`messages=hide`**: Hides text chat.
* **`messages=on`**: Enables text chat.

### Killfeed

Controls death and objective notifications in the top right corner.

Default setting: **`killfeed=on`** (all presets, except Very Low).

* **`killfeed=off`**: Disables killfeed.
* **`killfeed=on`**: Enables killfeed.

### Killstreaks

Controls banners that appear at the top center of the screen, notifying you of a player's killstreak.

Default setting: **`killstreaks=high`** (all presets, except Low and Very Low).

* **`killstreaks=off`**: Disables killstreak banner.
* **`killstreaks=low`**: Enables killstreak text with no banner.
* **`killstreaks=high`**: Enables killstreak translucent banner.

### HUD Achievements

Controls the HUD achievements tracker.

Default setting: **`hud_achievement=on`** (all presets, except Very Low).

* **`hud_achievement=off`**: Disables achievement tracker panel completely.
* **`hud_achievement=on`**: Enables support for achievement tracker panel.

### Console

Controls console.

Default setting: **`console=on`** (all presets, except Very Low).

* **`console=off`**: Disables developer console.
* **`console=on`**: Enables developer console.

### Outlines

Controls the outlines that appear through walls for players and some objectives (payload, CTF briefcase).

Default setting: based on which preset you are currently using.

* **`outlines=off`**: Disables outlines and nametags.
* **`outlines=low`**: Enables nametags, disable outlines.
* **`outlines=medium`**: Disables nametags and player outlines, enable objective outlines.
* **`outlines=high`**: Enables nametags and outlines.

### Map Background

Controls the live map that appears in the background of the main menu. Some options automatically exit immediately, for the sake of preloading assets.

Default setting: **`dynamic_background=off`** (all presets).

* **`dynamic_background=off`**: No main menu map background on startup.
* **`dynamic_background=preload`**: `preload_room` map background for yttrium's preloading (auto disconnects). **Warning: use this only for yttrium's preloading. If you want to preload anything else, use the `itemtest` setting. The probability that you don't have the `preload_room` map is big.**
* **`dynamic_background=itemtest`**: `itemtest` map background for preloading (auto disconnects).
* **`dynamic_background=dustbowl`**: Live Dustbowl map main menu background on startup.

## Sound modules

### Sound

Controls a variety of sound effects, including spatialization and positional effects.

!!! note
    In the Low and Very Low preset VPKs, spatialization and positional effects (called [DSP](https://developer.valvesoftware.com/wiki/DSP) in the Source Engine) are completely disabled.

Default setting: based on which preset you are currently using.

* **`sound=low`**: Disables sound volume mixing, very low quality sound spatialization and positional effects, delays spatialization.
* **`sound=medium`**: Enables sound volume mixing, only basic sound spatialization and positional effects enabled, slightly delays spatialization.
* **`sound=high`**: Enables sound volume mixing, enables all sound spatialization and positional effects, slightly delays spatialization.
* **`sound=very_high`** Enables sound volume mixing, enables all sound spatialization and positional effects, immediately spatializes and traces sounds, enables pitch smoothing.
* **`sound=ultra`**: Enables sound volume mixing, enables enhanced sound spatialization and positional effects, immediately spatializes and traces sounds, enables pitch smoothing.

### Voice Chat

Controls player voice chat.

!!! warning
    Turning on the voice chat system while in a server will
    require a reconnect.

Default setting: **`voice_chat=on`** (all presets, except Very Low).

* **`voice_chat=off`**: Disables the in-game voice chat system.
* **`voice_chat=on`**: Enables the in-game voice chat system.

## Misc modules

### Mod Support

Ensures compatibility with animation and model mods.

Default setting: **`mod_support=on`** (all presets).

!!! info
    You may want to also enable preloading using the [Map Background module](#map-background).

* **`mod_support=off`**: Does not block settings that may cause crashes with animation and model mods.
* **`mod_support=on`**: Blocks settings that may cause crashes with animation and model mods.

### Party Join Mode

Controls the privacy of your Casual/Competitive party.

Default setting: **`party_mode=request`** (all presets).

* **`party_mode=open`**: Open party (your friends can join anytime).
* **`party_mode=request`**: Request-only party (your friends can only join if they request or if you invite them).
* **`party_mode=invite`**: Invite-only party (your friends can only join if you invite them).

### Logo

Controls the mastercomfig logo which appears in console on start up.

Default setting: **`logo=on`** (all presets, except Very Low).

* **`logo=off`**: Does not print logo in console on startup.
* **`logo=on`**: Prints logo in console on startup.

### Language

!!! warning
    This module should be set in `pre_comfig.cfg` instead of `modules.cfg`.

Controls the language mastercomfig outputs with.

Default setting: **`lang=en`** (all presets).

* **`lang=en`**: English
* **`lang=pt`**: Português (Portuguese)
* **`lang=ru`**: Pусский (Russian)
* **`lang=es`**: Español (Spanish)
* **`lang=fr`**: Français (French)
* **`lang=hr`**: Hrvatski (Croatian)
* **`lang=cs`**: Česká (Czech)

### Movement Binds

!!! warning
    This module requires the Null-Canceling Movement addon to work.

Changes the keys that are used to move while the Null-Canceling Movement addon is installed.
If your preferred movement keys are not listed here, you can edit them manually by binding these aliases:

* Forward: `+mf`
* Left: `+ml`
* Backward: `+mb`
* Right: `+mr`

Example:

* Forward: `bind w +mf`
* Left: `bind a +ml`
* Backward: `bind s +mb`
* Right: `bind d +mr`

Default setting: **`move_bind=wasd`** (all presets).

* **`move_bind=wasd`**: Sets movement keys to WASD.
* **`move_bind=esdf`**: Sets movement keys to ESDF.
* **`move_bind=zqsd`**: Sets movement keys to ZQSD (default for AZERTY keyboards).
* **`move_bind=arrows`**: Sets movement keys to the Arrow Keys.
* **`move_bind=asdf`**: Sets movement keys to ASDF (A/S forward/back, D/F left/right).
* **`move_bind=vim`**: Sets movement keys to HJKL (K/J forward/back, H/L left/right).
