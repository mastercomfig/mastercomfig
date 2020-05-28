# config folder
This folder contains the original files for the config, used for creating the `.vpk` files. You can read the files in these folders for reference but it is not recommended to use the `comfig/comfig.cfg` as an `autoexec` by copying and pasting text, as you will lose the many benefits from the extra script and data files in the config.

## addons folder
These are folders with addon files.

### mastercomfig-badgpu-addon
This is an addon to tweak the config to work better on integrated graphics cards and old GPUs.

### mastercomfig-disable-pyroland-addon
This is an addon to remove Pyroland map textures. It is used in the `low` and `very-low` presets by default.

### mastercomfig-flat-mouse-addon
This is an addon which tweaks mouse settings for stabler and consistent mouse input.

### mastercomfig-lowmem-addon
This is an addon which aggressively reduces memory usage for low memory systems.

### mastercomfig-no-footsteps-addon
This is an addon to remove footstep sounds. It is used only in the `very-low` preset by default.

### mastercomfig-no-soundscapes-addon
This is an addon to remove soundscapes (ambient map noise). It is used in the `low` and `very-low` presets by default.

### mastercomfig-no-tutorial-addon
This is an addon to skip tutorial messages and map introduction videos. It is used only in the `very-low` preset by default.

### mastercomfig-null-cancelling-movement-addon
This is an addon to make movement commands instantly respond on keypress, rather than using axis based values.

### mastercomfig-transparent-viewmodels-addon
This is an addon which sets settings for compatabiltiy with transparent viewmodels.

## cfg folder
This is where `.cfg` based addons and presets are stored.

## mastercomfig folder
These are the main files that get executed and read by the engine for every preset.

## templates folder
This is where `.cfg` user templates files are located. For instance, `modules.cfg` is there.
