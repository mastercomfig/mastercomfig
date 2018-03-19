# Dev scripts
This folder contains scripts to build release files and manage releases.

## Packaging
This creates the necessary files for releases (VPKs for addons and presets, 
and the autoexecs for cfg.tf).

### Presets
This collects the common files from the config folder, then generates an
`autoexec.cfg` that executes `comfig.cfg`, the appropriate preset, all addons
(which will skip execution if not preset) and `custom.cfg`. Overrides are then
copied on top of the common files.

Each preset's folder is then packaged into a VPK.

This requires a `vpk` script installed to your binaries.
See [VDC](https://developer.valvesoftware.com/wiki/VPK#Linux_users).

### Addons

This script collects the config files from the various addons and generates a
VPK for each.

This requires a `vpk` script installed to your binaries.
See [VDC](https://developer.valvesoftware.com/wiki/VPK#Linux_users).

### Autoexecs

The packaging script for autoexecs is used to create combinations of the default
comfig with some presets and addons for use on cfg.tf.

This requires `dos2unix` to be installed to convert the CRLF line endings to
LF for cfg.tf.

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
DISCORD_WEBHOOK="Discord webhook for config announcements"
GITHUB_USERNAME="GitHub username used for authentication for release deployment"
GITHUB_TOKEN="GitHub authentication token used for release deployment"
```
