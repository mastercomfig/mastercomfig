# Config folder
This folder contains the original files for the config, used for creating the
VPK files and ZIP file. You can read the files in these folders for reference
but it is not recommended to use the `comfig.cfg` as an `autoexec` by copying
and pasting text, as you will lose the many benefits from the extra script and
data files in the config. Additionally, using the folders as a custom folder,
like in the alternative ZIP based installation, will increase load times and
may introduce loading bugs.

## 01-mastercomfig folders
These are folders with overrides for the main `mastercomfig/` folder. They
start with `01` so they are loaded in the correct order to override conflicting
files.

### 01-mastercomfig_maxperformance
These are overrides for the `maxperformance` and `stripped` presets.

### 01-mastercomfig_maxquality
These are overrides for the `maxquality` preset.

### 01-mastercomfig_no_footsteps
These are overrides to remove footstep sounds, used in the `stripped` preset.

### 01-mastercomfig_no_soundscapes
These are overrides to remove sounds, used in the `maxperformance` and
`stripped` presets.

## mastercomfig folders
These are the main config files that get executed and read by the engine.

### mastercomfig
This is where the data files and console variables/commands go.

### mastercomfig_exec
This is where the execution config file goes that selects specific presets and
addons to be run, as well as the main config file.
