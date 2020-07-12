# Dev scripts

This folder contains scripts to build release files and manage releases.

## No Tutorial Viewed

`no_tutorial_viewed.sh` generates `viewed.res` for the No Tutorial addon, by
setting a viewed count that disables goal notifications ("You are now
Attacking!") and map intro movies. It does this by temporarily copying
`generate_viewed.sh` to `TF2_DIR/tf/maps` and executing it, and moving the
resultant `viewed.res` into the No Tutorial addon's `media` folder.

## Packaging

This creates the necessary files for releases (VPKs for addons and presets,
and the autoexecs for cfg.tf).

### Presets

This collects the common files from the config folder, then generates an
`autoexec.cfg` that executes `comfig/comfig.cfg`, the appropriate preset, all addons
(which will skip execution if not preset) and `user/autoexec.cfg`. Overrides are then
copied on top of the common files.

Each preset's folder is then packaged into a VPK.

This requires a `vpk` script installed to your binaries.
See [VDC](https://developer.valvesoftware.com/wiki/VPK#Linux_.2F_Unix).

### Addons

This script collects the files from the various addons and generates a
VPK for each.

This requires a `vpk` script installed to your binaries.
See [VDC](https://developer.valvesoftware.com/wiki/VPK#Linux_.2F_Unix).

## Releases

Release scripts are used for releasing final versions for the config and are
not generally useful for public use.

### Deployment

This will create a GitHub release and upload the files generated from packaging
to that release.

### Announcements

This will send an announcement to a Discord channel, and generate BBCode from
the supplied version and highlights text.

## mastercomfig-vars

This is a file that must be supplied by the user with the following entries:

```bash
#!/bin/sh
export DISCORD_WEBHOOK="Discord webhook for config announcements"
export GH_USERNAME="GitHub username used for authentication for release deployment"
export GH_TOKEN="GitHub authentication token used for release deployment"
export GH_REPO="GitHub repository in the format owner/repo"
export TF2_DIR="absolute path to Team Fortress 2 directory"
```
