# Modules
Modules are groups of related commands with specific values for a certain use case or quality level.

## How to use
Modules are [used in presets](https://github.com/mastercoms/mastercomfig/tree/release/config/cfg/presets) to set quality levels and can also be used in a `tf/cfg/user/modules.cfg` file to customize your config easily without searching for individual console variable values. Just put your desired module level in `user/modules.cfg`. For example, `textures=high`.

You can [download the modules.cfg template](https://github.com/mastercoms/mastercomfig/releases/latest/download/modules.cfg) file and drag it into your `tf/cfg/user` folder to get started.

### In game selection

You can select modules in game using the console. Just enter the module you'd like to select with a `=` before it. This selection will persist even after a restart!

For example, you could enter `=textures=high` to set your textures to high, and to have it set to high in future launches as well.

**How does it work?** It logs things to a file called `tf/cfg/modules.txt`, and then executes that `modules.txt` as a config file.

### Advanced
Modules are backed with aliases, so you can easily use them in advanced customization and scripting.

If you want to disable running a module entirely, you can put (for example) `alias textures ""` in `user/modules.cfg`.

Since modules aliases act like normal commands, they can also be used in console to easily change game settings. So you could enter `textures_high` into console to temporarily set your texture quality to high for that game session. You can reset your modules back to what they were on startup before you ran the module commands by entering `run_modules` into console.

### Custom modules
You can also create your own modules. Here are user versions of internal mastercomfig definitions:

* `comfig/comfig.cfg` (define module levels): `user/define_modules.cfg`
* `comfig/modules_run.cfg` (apply modules): `user/modules_run.cfg`
* `comfig/select_modules.cfg` (define in-game selection commands): `user/select_modules.cfg`

## Network modules

### Packet rate

Controls how fast you send and receive from the server.

Default setting: **`packet_rate=standard`** (all presets).

* **`packet_rate=congestion`**: A halved packet rate for congested networks, usually bad WiFi
* **`packet_rate=conservative`**: A lower packet rate for slower or less reliable networks, usually WiFi or slow Ethernet (PoE, low bandwidth, etc.)
* **`packet_rate=balanced`**: A 60 packet rate, for getting rid of extra packets usually not displayed on 60Hz monitors.
* **`packet_rate=standard`**: The standard 66 packet rate which is the maximum for all servers.

### Snapshots

Controls how reliable to consider the snapshots you receive from the server to apply client side smoothing between snapshot receives.

Default setting: **`snapshots=balanced`** (all presets).

* **`snapshots=unreliable`**: Heavily protects against packet loss by using every 3rd snapshot
* **`snapshots=safe`**: Safest option with minimal snapshot delay by using every other snapshot
* **`snapshots=balanced`**: Even less snapshot delay with unreliable snapshot fallback to prevent infrequent packet loss issues
* **`snapshots=lan`**: Very reliant on snapshots by using every snapshot. Only use on LAN.

### Packet size

Controls how big packets are and how they are split up/compressed.

Default setting: **`packet_size=balanced`** (all presets).

* **`packet_size=conservative`**: Uses a smaller, safe packet size that should be able to be processed by most routers, even lower end ones.
* **`packet_size=lowend`**: Uses big single packets while avoiding compression unless needed to avoid splitting up packets. This minimizes computations done on packets before sending.
* **`packet_size=minimal`**: This minimizes data usage by aggressively compressing packets and avoiding splitting packets (which have more data size overhead than a single packet).
* **`packet_size=balanced`**: Uses a reasonably large packet size limit that should work with most routers except the lowest end ones. Compresses minimally.

### Bandwidth

Controls the max speed of packet sending to restrict it to your internet speed to prevent packet overflow. Values in bits (Kilobits or Megabits per second).

**Note:** This does not increase data usage, just restricts how quickly data can be sent.

Default setting: **`bandwith=1.5Mbps`** (all presets).

* **`bandwidth=restricted`**: Highly restricted game traffic for very bad Internet (192Kbps).
* **`bandwidth=384Kbps`**: 384Kbps game traffic bandwidth.
* **`bandwidth=512Kbps`**: 512Kbps game traffic bandwidth.
* **`bandwidth=768Kbps`**: 768Kbps game traffic bandwidth.
* **`bandwidth=1.0Mbps`**: 1.0Mbps game traffic bandwidth.
* **`bandwidth=1.5Mbps`**: 1.5Mbps game traffic bandwidth.
* **`bandwidth=2.0Mbps`**: 2.0Mbps game traffic bandwidth.
* **`bandwidth=2.5Mbps`**: 2.5Mbps game traffic bandwidth.
* **`bandwidth=3.0Mbps`**: 3.0Mbps game traffic bandwidth.
* **`bandwidth=4.0Mbps`**: 4.0Mbps game traffic bandwidth.
* **`bandwidth=unrestricted`**: A high rate that should be good for all game traffic (6.0Mbps).
* **`bandwidth=max`**: The absolute maximum rate allowed by the game (8.0Mbps).


### Downloads

Default setting: **`download=mapsonly`** (all presets).

* **`download=all`**: Download all custom files from servers
* **`download=nosounds`**: Download everything but sounds from servers
* **`download=mapsonly`**: Download only maps from servers
* **`download=none`**: Download no custom files from servers

## Rendering modules

### Level of detail

Controls how detailed objects are and how decorations fade in.

Default setting: based on which preset you are currently using.

* **`lod=low`**: Low  model detail. Decorations are never drawn.
* **`lod=medium`**: Low  model detail. Decorations pop in quickly
* **`lod=medium_high`**: Medium  model detail. Decorations fade in gradually.
* **`lod=high`**: High model detail. Decorations fade out only when far away.
* **`lod=ultra`**: Forces high model detail regardless of distance. Decorations fade out only when far away.

### Lighting

Controls lighting fidelity: dynamic lights, how detailed lighting is, phong, rimlights, light averaging, lightwarps, and ambient boost.

Default setting: based on which preset you are currently using.

* **`lighting=very_low`**: No dynamic lights. Very inaccurate, blocky lighting. No light brightness smoothing, lightwarps, phong, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=low`**: No dynamic lights. Blocky lighting. No light brightness smoothing, lightwarps, phong, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=medium`**: No dynamic lights. No light brightness smoothing, lightwarps, phong, rimlights or lighting brightness boost. Disables bumpmaps and specular.
* **`lighting=medium_high`**: No dynamic lights. Detailed lighting. No lightwarps.
* **`lighting=high`**: Some dynamic lights. Detailed lighting. No lightwarps.
* **`lighting=very_high`**: Some dynamic lights. Detailed lighting.
* **`lighting=ultra`**: A lot of dynamic lights. Extremely detailed lighting. Extra lighting brightness boost.

### Shadows

Controls shadow quality. Shadow limits affect rendered shadows. Shadows above the limit will be blobby.

Default setting: based on which preset you are currently using.

* **`shadows=off`**: No shadows.
* **`shadows=very_low`**: Blobby shadows.
* **`shadows=low`**: Up to 4 low quality shadows, and low robot shadow distance.
* **`shadows=medium`**: Up to 12 high quality shadows, and medium robot shadow distance.
* **`shadows=high`**: Up to 18 high quality shadows, and high robot shadow distance.
* **`shadows=ultra`**: Up to 32 high quality shadows, and high robot shadow distance.

### Effects

Controls weapon and other miscellaneous effects.

**Note:** The way TF2 uses these settings is inconsistent and may not apply in all cases.

Default setting: based on which preset you are currently using.

* **`effects=low`**: disables shell casing ejection, disables muzzle flashes, disables first person tracers, disables water splashes
* **`effects=medium`**: disables shell casing ejection, disables muzzle flashes, shows first person tracers, enables water splashes
* **`effects=high`**: enables shell casing ejection, enables muzzle flashes, shows first person bullet tracers and makes bullet tracers thicker, enables water splashes
* **`effects=ultra`**: enables shell casing ejection, enables muzzle flashes, shows first person bullet tracers and makes bullet tracers thicker, enables water splashes

### Water

Controls water reflections.

Default setting: based on which preset you are currently using.

* **`water=very_low`**: Makes water black
* **`water=low`**: Makes water solid
* **`water=medium`**: Uses standard water with no reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=medium_high`**: Uses standard water with basic reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=high`**: Uses standard water with all reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=very_high`**: Uses high quality water with all reflections. Fades out to low quality solid/black water at reasonable ranges.
* **`water=ultra`**: Uses high quality water with all reflections. Never fades out to low quality water.

### Particles

Controls particle effects.

Default setting: based on which preset you are currently using.

* **`particles=very_low`**: Collapses particles (including bullet tracers) together, makes flames invisible on every other flame stream, disables weather particles, reduces particle density, disables bullet impact flecks
* **`particles=low`**: Disables weather particles, reduces particle density, disables bullet impact flecks
* **`particles=medium`**: Disables weather particles, reduces particle density, enables bullet impact flecks
* **`particles=high`**: Enables weather particles, uses full particle density, enables bullet impact flecks
* **`particles=ultra`**: Enables weather particles, uses full particle density, enables the new bullet impact effects system, enables bullet impact flecks

### General Post Processing

Controls standard post processing effects.

Default setting: based on which preset you are currently using.

* **`post_processing=off`**: No post processing
* **`post_processing=low`**: Enables basic color correction
* **`post_processing=medium`**: Enables LDR bloom
* **`post_processing=high`**: Enables standard HDR and bloom
* **`post_processing=ultra`**: Enables precise HDR and bloom

### Pyrovision

Controls pyrovision visual effects.

Default setting: based on which preset you are currently using.

* **`pyrovision=low`**: Disables pyrovision vignette and skybox SSAO depth of field
* **`pyrovision=medium`**: Enables static pyrovision vignette
* **`pyrovision=high`**: Enables skybox SSAO depth of field, dynamic pyrovision vignette

### Motion blur

Controls blurring effect from rotation and movement.

Default setting: **`motion_blur=off`** (all presets).

* **`motion_blur=off`**: Turns off motion blur
* **`motion_blur=low`**: Turns on motion blur but reduces it significantly
* **`motion_blur=high`**: Motion blur fully enabled

### Antialiasing

Controls additional antialiasing passes (software AA).

Default setting: based on which preset you are currently using.

* **`aa=off`**: Turns off additional antialiasing
* **`aa=on`**: Enhanced fence and grass antialiasing

### MSAA Antialiasing

Controls the main hardware based MSAA antialiasing (and CSAA, if you have an Nvidia card that supports it).

Default setting: based on which preset you are currently using.

* **`aa_msaa=off`**: Turns off MSAA and CSAA
* **`aa_msaa=2x`**: MSAA 2x
* **`aa_msaa=4x`**: MSAA 4x
* **`aa_msaa=8x`**: MSAA 8x
* **`aa_msaa=16xq_csaa`**: MSAA 8x + CSAA 2x if supported. MSAA 8x otherwise.

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

Default setting: based on which preset you are currently using.

* **`characters=very_low`**: Disables facial animations, no eyes or teeth
* **`characters=low`**: Disables facial animations, enables eyes, disables teeth, disables eye movement and blinking
* **`characters=medium`**: Enables facial animations, enables eyes and teeth, disables eye movement and blinking, disables enhanced lip sync
* **`characters=medium_high`**: Enables facial animations, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at short range
* **`characters=high`**: Enables smooth facial animations, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at a slightly increased range
* **`characters=ultra`**: Enables smooth facial animations, high quality models, enables eyes and teeth, enables eye movement and blinking, enables enhanced lip sync at all ranges

### General decals

Controls bullet holes and overall decal support.

Note that in the Very Low preset, decals are forced invisible.

Default setting: based on which preset you are currently using.

* **`decals=off`**: Disables decals
* **`decals=low`**: 9 max decals that hide at a medium range that can't overlap very much
* **`decals=medium`** 96 max decals that hide at a medium range that can't overlap very much
* **`decals=high`**: 96 max decals that hide at a far away range that can overlap much more
* **`decals=ultra`**: 2048 max decals (engine limit) that do not hide and can overlap with practically no limit

### Model decals

Controls blood on hurt players and some bullet decals on props.

Default setting: based on which preset you are currently using.

* **`decals_models=off`**: Disable model decals
* **`decals_models=low`**: Allow up to 9 model decals
* **`decals_models=high`**: Allow up to 32 model decals

### Map decals

Controls decals placed by the map author.

Default setting: based on which preset you are currently using.

* **`decals_art=off`**: Disables map decals
* **`decals_art=on`**: Enables map decals

### Spray decals

Controls decals sprayed by players.

Default setting: based on which preset you are currently using.

* **`sprays=off`**: Completely disables downloading, uploading and displaying sprays
* **`sprays=on`**: Allows sprays

### Gibs

Default setting: based on which preset you are currently using.

* **`gibs=off`**: Disables gibs
* **`gibs=low`**: Max of 2 gib parts
* **`gibs=medium`**: Default number of gibs
* **`gibs=high`**: Default number of gibs, gibs can burn

### Low violence

Default setting: **`lowviolence=off`** (all presets).

* **`lowviolence=off`**: Normal gibs and blood
* **`lowviolence=on`**: Turns on low violence mode. In TF2, this means birthday style gibs and blood.

### Props

Controls the rendering of various small objects.

Default setting: based on which preset you are currently using.

* **`props=low`**: Disables client side props like bottles, disables foliage, low quality prop models and invisible railings
* **`props=medium`**: Disables client side props, disables foliage, default quality prop models
* **`props=high`**: Enables ambient lighting and decals on static props, enables a small number of client side props, enables foliage at a reasonable distance with instant pop in, default quality prop models
* **`props=ultra`** Enables ambient lighting and decals on static props, enables a high number of client side props, enables foliage at a very high distance with fade in, max quality prop models regardless of distance

Keep in mind that you must add your preferred `cl_detaildist` and `cl_detailfade` settings to your class configs if they are different from your preset, or else they will be overridden.

### Ragdolls

Control physics simulation and fading for bodies that spawn on death.

Default setting: based on which preset you are currently using.

* **`ragdolls=off`**: Disables ragdolls
* **`ragdolls=medium`**: Enables standard ragdolls
* **`ragdolls=high`**: Enables ragdolls with collisions with a high fade out time

### 3D sky

Controls the enhanced 3D skybox that is present in most maps.

Default setting: based on which preset you are currently using.

* **`3dsky=off`**: Disables 3D sky
* **`3dsky=on`**: Enables 3D sky

### Jigglebones

Controls cloth and joint physics on some items like the fish and skull bat.

Default setting: based on which preset you are currently using.

* **`jigglebones=off`**: Always disable jigglebones
* **`jigglebones=on`**: Disable jigglebones only if the framerate is below 67FPS
* **`jigglebones=force_on`**: Never disable jigglebones

### Killstreak Sheens Speed

How fast the animation is on the killstreak sheen glow for weapons.

Default setting: **`sheens_speed=slow`** (all presets).

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

* **`textures=very_low`**: Low texture quality, blocky textures, disables texture blending
* **`textures=low`**: Low texture quality, disables texture blending
* **`textures=medium`**: Medium texture quality
* **`textures=high`**: High texture quality
* **`textures=very_high`**: Very high texture quality

### Ropes

Controls ropes for Mannpower grappling hook and decorations in maps.

Default setting: based on which preset you are currently using.

* **`ropes=off`**: Disables ropes
* **`ropes=low`**: Basic ropes
* **`ropes=high`**: Ropes with smoothing and basic subdivisions
* **`ropes=ultra`**: Ropes with max smoothing, increased subdivisions, collision checks and wind simulation

## HUD modules

### Player model

Toggle the live 3D player model in the corner of your screen.

Default setting: based on which preset you are currently using.

* **`hud_player_model=off`**: Disables the player model
* **`hud_player_model=on`**: Enables the player model

### Panels

Toggle health/player info panels.

Default setting: **`hud_panels=on`** (all presets).

* **`hud_panels=off`**: Disables health/player info panels on hover.
* **`hud_panels=on`**: Enables health/player info panels on hover.

### Messages

Default setting: **`messages=enable`** (all presets).

* **`messages=disable`**: Disables all text messages
* **`messages=userchat`**: Only displays user generated messages
* **`messages=enable`**: Enables all text messages

### Killfeed

Default setting: **`killfeed=on`** (all presets).

* **`killfeed=off`**: Disables killfeed
* **`killfeed=on`**: Enables killfeed

### Killstreaks

Default setting: **`killstreaks=high`** (all presets).

* **`killstreaks=off`**: Disable killstreak banner
* **`killstreaks=low`**: Enables killstreak solid banner
* **`killstreaks=high`**: Enables killstreak translucent banner

### HUD Achievements

Default setting: **`hud_achievement=off`** (all presets).

* **`hud_achievement=off`**: Disable achievement tracker panel completely
* **`hud_achievement=on`**: Enable support for achievement tracker panel

### Debug

Default setting: **`debug=minimal`** (all presets).

* **`debug=on`**: Enable all debug HUDs
* **`debug=on_partial`**: Enable all but the noisiest debug HUDs
* **`debug=minimal`**: Enable developer console
* **`debug=off`**: Disable all debug features

### Outlines

Default setting: based on which preset you are currently using.

* **`outlines=off`**: Disable outlines and nametags
* **`outlines=low`**: Enable nametags, disable outlines
* **`outlines=high`**: Enable nametags and outlines

### Map Background

Default setting: **`dynamic_background=off`** (all presets).

* **`dynamic_background=off`**: No main menu map background on startup
* **`dynamic_background=preload`**: `preload_room` map background for yttrium preloading (auto disconnects)
* **`dynamic_background=itemtest`**: `itemtest` map background for preloading (auto disconnects)
* **`dynamic_background=dustbowl`**: Live Dustbowl map main menu background on startup

## Sound modules

Note that in the Low and Very Low presets, spatialization and positional effects (called [DSP](https://developer.valvesoftware.com/wiki/DSP) in the Source Engine) are completely disabled.

Default setting: based on which preset you are currently using.

* **`sound=low`**: Disable sound volume mixing, very low quality sound spatialization and positional effects, delays spatialization
* **`sound=medium`**: Enables sound volume mixing, only basic sound spatialization and positional effects enabled, slightly delays spatialization
* **`sound=high`**: Enables sound volume mixing, enables all sound spatialization and positional effects, slightly delays spatialization
* **`sound=very_high`** Enables sound volume mixing, enables all sound spatialization and positional effects, enables pitch smoothing
* **`sound=ultra`**: Enables sound volume mixing, enables enhanced sound spatialization and positional effects, immediately spatializes and traces sounds, enables pitch smoothing
