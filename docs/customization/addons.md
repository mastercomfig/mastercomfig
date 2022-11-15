---
description: Use the addons provided by Mastercomfig to implement additional functionality
...

# Addons

Mastercomfig provides multiple addons that provide multiple changes, optimisations, and fixes depending on your needs and specifications. They can be downloaded while [installing Mastercomfig through the app](https://mastercomfig.com/app/).

You can find out specifically what each addon does by [viewing their respective cfg file](https://github.com/mastercomfig/mastercomfig/tree/release/config/cfg/addons).

Some addon configs files only contain an activation message for console, as their functionality is asset based. Their functionality can be [viewed in the separate addons folder](https://github.com/mastercomfig/mastercomfig/tree/release/config/addons).

## No Footsteps
Removes footstep sounds. Footstep sounds can be intrusive for some players as your footsteps sound the same as everyone else's.

**WARNING**: May cause backstabs.

## Disable Pyroland
Removes Pyroland map textures. Support for Pyroland is limited to only a handful of maps so this addon makes wearing Pyrovision goggles more consistent and less obtrusive.

## No Soundscapes
Removes soundscapes (ambient map noise) and bird noises. These sounds do not directly benefit gameplay and can be intrusive for some players.

## No Tutorial
Disables the tutorial messages and other popups related to new players and feature explanations.

## Flat Mouse
Makes mouse input more "flat" and predictable through various means:

* Disables mouse acceleration
* Only uses raw mouse input and disables mouse filtering
* 1:1 mouse sensitivity when zoomed

## OpenGL
Provides additional optimizations for OpenGL on macOS and Linux. Not necessary for Windows users.

## Transparent Viewmodels
Enables support for transparent viewmodels. **This will not enable them automatically.**

To use this addon, you will need to use a mod or custom HUD which allows for transparent viewmodels.

Transparent viewmodels will disable anti-aliasing and dxlevel 90 or higher.

## Null Cancelling Movement
Prevents you from pressing two opposing directions, which causes you to stop moving. **These binds must be configured once installed.**

### Configure in Mastercomfig
You can use the custom key-binding functionality in the Mastercomfig app to bind these keys.

* `+mf` should be typically bound to W, or preferred forward key
* `+mb` should be typically bound to S, or preferred backward key
* `+ml` should be typically bound to A, or preferred left key
* `+mr` should be typically bound to D, or preferred right key

### Configure Manually
You can add the binds manually by adding the following commands to your `autoexec.cfg`, `game_overrides.cfg`, or another preferred configuration.

```cfg
bind "W" "+mf"
bind "S" "+mb"
bind "A" "+ml"
bind "D" "+mr"
```

## Low Memory
Optimizations that generally do not affect quality for low memory (RAM) systems (2GB and lower):

* Disables persistent buffer to save memory
* Does not pre-allocate or textures or use batch textures
* Flushes unused data more frequently
* Unloads models from memory more frequently
* Console output is not stored

**WARNING:** Do not use this addon if you have high memory on your system, as it WILL reduce performance on these systems.
