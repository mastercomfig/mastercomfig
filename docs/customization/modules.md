---
description: Easily customize mastercomfig to get the exact stuff you want without memorizing tons of commands!
---

# Modules
Modules are groups of related commands with specific values for a certain use case or quality level.

## How to use
Modules are [used in presets](https://github.com/mastercomfig/mastercomfig/tree/release/config/cfg/presets) to set quality levels and can also be used in the `tf/cfg/user/modules.cfg` file to customize your config easily without searching for individual console variable values. Just put your desired module level in `user/modules.cfg`. For example:

```
textures=high
```

This will set the texture quality to `high`.

### Advanced

!!! warning
    These steps are entirely optional and are only for advanced customization.

Modules are backed with aliases, so you can easily use them in advanced customization and scripting.

If you want to disable running a module entirely, you can put (for example) `alias textures` in `user/modules.cfg`. This will disable mastercomfig from running texture commands.

Since modules aliases act like normal commands, they can also be used in console to easily change game settings. So you could enter `textures_high` into console to temporarily set your texture quality to high for that game session. You can reset your modules back to what they were on startup before you ran the module commands by entering `run_modules` into console.

## Network modules

### Packet rate

Controls how fast you send and receive from the server.

Default setting: **`packet_rate=standard`** (all presets, except Very Low).

* **`packet_rate=congestion`**: A halved (33) packet rate for congested networks, usually bad WiFi, or very slow CPUs.
* **`packet_rate=standard`**: The standard 66 packet rate which is the maximum for all normal servers.

### Snapshot Buffer

Controls how reliable to consider the snapshots you receive from the server to apply client-side buffering/smoothing between snapshot receives.
Also known as linear interpolation (lerp or interp). Note: mastercomfig sets this automatically per class, but setting it in your `modules.cfg` will override this behavior.

Default setting: based on which class you are currently playing.

* **`snapshot_buffer=high`**: Heavily protects against packet loss by using every 3rd snapshot.
* **`snapshot_buffer=safe`**: Safest option with minimal snapshot delay by using every other snapshot.
* **`snapshot_buffer=low`**: Fastest option with a minimal buffering time to guard against.

### Packet size

Controls how big packets are and how they are split up/compressed.

Default setting: **`packet_size=big`** (all presets).

* **`packet_size=small`**: Uses the smallest packet size, which should be able to be processed by even the worst routers.
* **`packet_size=conservative`**: Uses a smaller, safe packet size that should be able to be processed by most routers, even lower end ones.
* **`packet_size=big`**: Uses a reasonably large packet size limit that should work with most reliable connections and Internet routes.
* **`packet_size=saver`**: This minimizes data usage by aggressively compressing packets and avoiding splitting packets (which have more data size overhead than a single packet).
* **`packet_size=speed`**: This prioritizes less CPU usage over data usage by disabling packet compression and avoiding split packets.

### Bandwidth

Controls the max speed of packet sending to restrict it to your internet speed to prevent packet overflow. Values in bits (Kilobits or Megabits per second).

!!! note
    This does not increase data usage, just restricts how quickly data can be sent.

Default setting: **`bandwidth=1.5Mbps`** (all presets).

* **`bandwidth=128Kbps`**: 128Kbps game traffic bandwidth.
* **`bandwidth=192Kbps`**: 192Kbps game traffic bandwidth.
* **`bandwidth=384Kbps`**: 384Kbps game traffic bandwidth.
* **`bandwidth=512Kbps`**: 512Kbps game traffic bandwidth.
* **`bandwidth=768Kbps`**: 768Kbps game traffic bandwidth.
* **`bandwidth=1.0Mbps`**: 1.0Mbps game traffic bandwidth.
* **`bandwidth=1.5Mbps`**: 1.5Mbps game traffic bandwidth.
* **`bandwidth=2.0Mbps`**: 2.0Mbps game traffic bandwidth.
* **`bandwidth=2.5Mbps`**: 2.5Mbps game traffic bandwidth.
* **`bandwidth=3.0Mbps`**: 3.0Mbps game traffic bandwidth.
* **`bandwidth=4.0Mbps`**: 4.0Mbps game traffic bandwidth.
* **`bandwidth=6.0Mbps`**: 6.0Mbps game traffic bandwidth.
* **`bandwidth=8.0Mbps`**: 8.0Mbps game traffic bandwidth. Absolute maximum allowed by the game.

### Downloads

Default setting: **`download=mapsonly`** (all presets).

* **`download=all`**: Download all custom files from servers.
* **`download=nosounds`**: Download everything but sounds from servers.
* **`download=mapsonly`**: Download only maps from servers.
* **`download=none`**: Download no custom files from servers.

## Rendering modules

### Level of detail

Controls how detailed models are.

Default setting: based on which preset you are currently using.

* **`lod=low`**: Low model detail.
* **`lod=medium`**: Medium model detail.
* **`lod=high`**: High model detail.
* **`lod=ultra`**: Forces high model detail regardless of distance.

### Lighting

Controls lighting fidelity: dynamic lights, how detailed lighting is, rimlights, light averaging, lightwarps, and ambient boost.

Default setting: based on which preset you are currently using.

* **`lighting=very_low`**: No dynamic lights. Very inaccurate lighting. No light brightness smoothing, lightwarps, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=low`**: No dynamic lights. No light brightness smoothing, lightwarps, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=medium`**: No dynamic lights. No light brightness smoothing, lightwarps, rimlights or lighting brightness boost.
* **`lighting=medium_high`**: No dynamic lights. Detailed lighting. No lightwarps.
* **`lighting=high`**: 6 dynamic lights. Detailed lighting.
* **`lighting=very_high`**: 12 dynamic lights. Detailed lighting. Slight extra lighting brightness boost.
* **`lighting=ultra`**: 32 dynamic lights. Extremely detailed lighting. Extra lighting brightness boost.

### Lighting Ex

Control extended lighting commands which cause a material system reload. Be careful setting them to anything other than high, as it can reduce performance on modern PCs.

Default setting: **`lighting_ex=high`** (all presets except Low, Very Low and Bad GPU addon (**`lighting_ex=low`**)).

* **`lighting_ex=low`**: Phong off.
* **`lighting_ex=high`**: Phong on.

### Shadows

Controls shadow quality. Shadow limits affect rendered shadows. Shadows above the limit will be blobby.

Default setting: based on which preset you are currently using.

* **`shadows=off`**: No shadows.
* **`shadows=very_low`**: Blobby shadows.
* **`shadows=low`**: Up to 4 low quality shadows, and low robot shadow distance.
* **`shadows=medium`**: Up to 12 high quality shadows, and medium robot shadow distance.
* **`shadows=high`**: Up to 18 high quality shadows, and high robot shadow distance.
* **`shadows=ultra`**: Up to 32 high quality shadows, and very high robot/Halloween boss shadow distance.

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

* **`particles=very_low`**: Collapses particles (including bullet tracers) together, makes flames invisible on every other flame stream, disables weather particles, aggressively reduces particle density, disables bullet impact flecks.
* **`particles=low`**: Disables weather particles, reduces particle density, disables bullet impact flecks.
* **`particles=medium`**: Disables weather particles, partially reduces particle density, enables bullet impact flecks.
* **`particles=high`**: Enables weather particles, uses full particle density, enables bullet impact flecks.
* **`particles=ultra`**: Enables weather particles, uses full particle density, enables the new bullet impact effects system, enables bullet impact flecks.

### General Post Processing

Controls standard post processing effects.

Default setting: based on which preset you are currently using.

* **`post_processing=off`**: No post processing.
* **`post_processing=low`**: Enables basic color correction.
* **`post_processing=medium`**: Enables LDR bloom.
* **`post_processing=high`**: Enables standard HDR and bloom.
* **`post_processing=ultra`**: Enables precise HDR and bloom.

### Pyrovision

Controls pyrovision visual effects.

Default setting: based on which preset you are currently using.

* **`pyrovision=low`**: Disables pyrovision vignette and skybox SSAO depth of field.
* **`pyrovision=medium`**: Enables static pyrovision vignette.
* **`pyrovision=high`**: Enables skybox SSAO depth of field, dynamic pyrovision vignette.

### Motion blur

Controls blurring effect from rotation and movement.

Default setting: **`motion_blur=off`** (all presets).

* **`motion_blur=off`**: Turns off motion blur.
* **`motion_blur=low`**: Turns on motion blur but reduces it significantly.
* **`motion_blur=high`**: Motion blur fully enabled.

### Antialiasing

Controls additional antialiasing passes.

Default setting: based on which preset you are currently using.

* **`aa=off`**: Turns off additional antialiasing.
* **`aa=on`**: Enhanced fence and grass antialiasing.

### MSAA Antialiasing

Controls the main hardware based MSAA antialiasing (and CSAA, if you have an Nvidia card that supports it).

!!! warning
    On Linux and macOS, AMD cards will do a slow full clear when anti-aliasing is enabled!

Default setting: based on which preset you are currently using.

* **`aa_msaa=off`**: Turns off MSAA and CSAA.
* **`aa_msaa=2x`**: MSAA 2x
* **`aa_msaa=4x`**: MSAA 4x
* **`aa_msaa=8x`**: MSAA 8x
* **`aa_msaa=16x`**: MSAA 8x + CSAA 2x if supported. MSAA 8x otherwise.

### Texture filtering

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

### General decals

Controls bullet holes and overall decal support.

Note that in the Very Low preset, decals are forced invisible.

Default setting: based on which preset you are currently using.

* **`decals=off`**: Disables decals.
* **`decals=low`**: 9 max decals that hide at a medium range that can't overlap very much.
* **`decals=medium`** 32 max decals that hide at a medium range that can't overlap very much.
* **`decals=high`**: 80 max decals that hide at a far away range that can overlap much more.
* **`decals=ultra`**: 2048 max decals (engine limit) that do not hide and can overlap with practically no limit.

### Model decals

Controls blood on hurt players and some bullet decals on props.

Default setting: based on which preset you are currently using.

* **`decals_models=off`**: Disable model decals.
* **`decals_models=low`**: Allow up to 9 model decals.
* **`decals_models=high`**: Allow up to 32 model decals.

### Map decals

Controls decals placed by the map author.

Default setting: based on which preset you are currently using.

* **`decals_art=off`**: Disables map decals.
* **`decals_art=on`**: Enables map decals.

### Spray decals

Controls decals sprayed by players.

Default setting: based on which preset you are currently using.

* **`sprays=off`**: Completely disables downloading, uploading and displaying sprays.
* **`sprays=on`**: Allows sprays. You must set a [Decals module](#general-decals) higher than `off` for it to work.

### Gibs

Default setting: based on which preset you are currently using.

* **`gibs=off`**: Disables gibs.
* **`gibs=low`**: Max of 2 gib parts.
* **`gibs=medium`**: Default number of gibs.
* **`gibs=high`**: Default number of gibs, gibs can burn.

### Silly gibs

Default setting: **`sillygibs=off`** (if gibs are on), and **`sillygibs=on`** (if `gibs=off`).

* **`sillygibs=off`**: Normal gibs and blood.
* **`sillygibs=on`**: Turns on silly gibs mode. This means birthday style gibs, sparks instead of blood upon flesh bullet impact, and no blood spawned upon gibbing.

### Props

Controls the rendering of various small objects.

Keep in mind that you must add your preferred `cl_detaildist` and `cl_detailfade` settings to your class configs if they are different from your preset, or else they will be overridden.

Default setting: based on which preset you are currently using.

* **`props=low`**: Disables client side props like bottles, disables foliage, low quality prop models and invisible railings.
* **`props=medium`**: Disables client side props, disables foliage, default quality prop models.
* **`props=high`**: Enables ambient lighting and decals on static props, enables a small number of client side props, enables foliage at a reasonable distance with instant pop in, default quality prop models.
* **`props=ultra`** Enables ambient lighting and decals on static props, enables a high number of client side props, enables foliage at a very high distance with fade in, max quality prop models regardless of distance.

### Ragdolls

Control physics simulation and fading for bodies that spawn on death.

Default setting: based on which preset you are currently using.

* **`ragdolls=off`**: Disables ragdolls.
* **`ragdolls=low`**: Enables physics ragdolls with an instant fade out time.
* **`ragdolls=medium`**: Enables standard physics ragdolls.
* **`ragdolls=high`**: Enables physics ragdolls with collisions with a high fade out time, as well as special animations like decapitation.

### 3D sky

Controls the enhanced 3D skybox that is present in most maps.

Default setting: based on which preset you are currently using.

* **`3dsky=off`**: Disables 3D sky.
* **`3dsky=on`**: Enables 3D sky.

### Jigglebones

Controls cloth and joint physics on some items like the fish and skull bat.

Default setting: based on which preset you are currently using.

* **`jigglebones=off`**: Always disable jigglebones.
* **`jigglebones=on`**: Disable jigglebones only if the framerate is below 67FPS.
* **`jigglebones=force_on`**: Never disable jigglebones.

### Killstreak Sheens Speed

How fast the animation is on the killstreak sheen glow for weapons.

Default setting: based on which preset you are currently using.

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

### Texture quality

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

## HUD modules

### Player model

Toggle the live 3D player model in the corner of your screen.

Default setting: based on which preset you are currently using.

* **`hud_player_model=off`**: Disables the player model.
* **`hud_player_model=on`**: Enables the player model.

### Panels

Toggle health/player info panels.

Default setting: **`hud_panels=on`** (all presets, except Very Low).

* **`hud_panels=off`**: Disables health/player info panels on hover.
* **`hud_panels=on`**: Enables health/player info panels on hover.

### Messages

Default setting: **`messages=enable`** (all presets, except Very Low).

* **`messages=disable`**: Disables all text messages.
* **`messages=userchat`**: Only displays user generated messages.
* **`messages=enable`**: Enables all text messages.

### Killfeed

Default setting: **`killfeed=on`** (all presets, except Very Low).

* **`killfeed=off`**: Disables killfeed.
* **`killfeed=on`**: Enables killfeed.

### Killstreaks

Default setting: **`killstreaks=high`** (all presets, except Low and Very Low).

* **`killstreaks=off`**: Disable killstreak banner.
* **`killstreaks=low`**: Enables killstreak text with no banner.
* **`killstreaks=high`**: Enables killstreak translucent banner.

### HUD Achievements

Default setting: **`hud_achievement=off`** (all presets).

* **`hud_achievement=off`**: Disable achievement tracker panel completely.
* **`hud_achievement=on`**: Enable support for achievement tracker panel.

### Debug

Default setting: **`debug=minimal`** (all presets, except Very Low).

* **`debug=on`**: Enable all debug HUDs.
* **`debug=on_partial`**: Enable all but the noisiest debug HUDs.
* **`debug=minimal`**: Enable developer console.
* **`debug=off`**: Disable all debug features.

### Outlines

Default setting: based on which preset you are currently using.

* **`outlines=off`**: Disable outlines and nametags.
* **`outlines=low`**: Enable nametags, disable outlines.
* **`outlines=high`**: Enable nametags and outlines.

### Map Background

Default setting: **`dynamic_background=off`** (all presets).

* **`dynamic_background=off`**: No main menu map background on startup.
* **`dynamic_background=preload`**: `preload_room` map background for yttrium preloading (auto disconnects).
* **`dynamic_background=itemtest`**: `itemtest` map background for preloading (auto disconnects).
* **`dynamic_background=dustbowl`**: Live Dustbowl map main menu background on startup.

## Mod Support

Default setting: **`mod_support=off`** (all presets).

You may want to also enable preloading using the [Map Background module](#map-background).

* **`mod_support=off`**: Enables better file system performance at the cost of animation and model mods causing crashes.
* **`mod_support=on`**: Disables file system optimizations (may cause stutters during gameplay, and longer map load times), but fixes crashes caused by animation and model mods.

## Sound modules

### Sound

!!! note
    In the Low and Very Low preset VPKs, spatialization and positional effects (called [DSP](https://developer.valvesoftware.com/wiki/DSP) in the Source Engine) are completely disabled.

Default setting: based on which preset you are currently using.

* **`sound=low`**: Disables sound volume mixing, very low quality sound spatialization and positional effects, delays spatialization.
* **`sound=medium`**: Enables sound volume mixing, only basic sound spatialization and positional effects enabled, slightly delays spatialization.
* **`sound=high`**: Enables sound volume mixing, enables all sound spatialization and positional effects, slightly delays spatialization.
* **`sound=very_high`** Enables sound volume mixing, enables all sound spatialization and positional effects, enables pitch smoothing.
* **`sound=ultra`**: Enables sound volume mixing, enables enhanced sound spatialization and positional effects, immediately spatializes and traces sounds, enables pitch smoothing.

### Voice Chat

!!! warning
    Turning on the voice chat system while in a server will
    require a reconnect.

Default setting: **`voice_chat=on`** (all presets, except Very Low).

* **`voice_chat=off`**: Disables the in-game voice chat system.
* **`voice_chat=on`**: Enables the in-game voice chat system.

## Miscellaneous

### Mastercomfig logo

Default setting: **`logo=on`** (all presets, except Very Low).

* **`logo=off`**: Does not print logo in console on startup.
* **`logo=on`**: Prints logo in console on startup.
