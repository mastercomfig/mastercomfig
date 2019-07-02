# Config folder
This folder contains the original files for the config, used for creating the
VPK files. You can read the files in these folders for reference
but it is not recommended to use the `comfig/comfig.cfg` as an `autoexec` by copying
and pasting text, as you will lose the many benefits from the extra script and
data files in the config.

## overrides folder
These are folders with overrides for the main `mastercomfig/` folder.

### low
These are overrides for the `low` and `very-low` presets.

### ultra
These are overrides for the `ultra` preset.

## addons folder
These are folders with non `.cfg` addon files.

### mastercomfig-no-extra-models-addon
This is an addon to remove extra models like rockets in the background, UFOs and
UFO posters, used all presets except for `ultra` by default.

### mastercomfig-no-footsteps-addon
This is an addon to remove footstep sounds, used in the `very-low` preset by default.

### mastercomfig-no-soundscapes-addon
This is an addon to remove soundscapes (ambient map noise), used in the `low` and
`very-low` presets by default.

### mastercomfig-no-pyroland-addon
This is an addon to remove Pyroland map textures, used in the `low`
and `very-low` presets by default.

## mastercomfig folder
These are the main files that get executed and read by the engine for every preset.

## cfg folder
This is where `.cfg` based addons and presets go.

## tf2.json
A work in progress JSON representation of mastercomfig.
