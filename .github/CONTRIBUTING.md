# Contributing

As an open-source project, mastercomfig appreciates the community's help in improving it.

We welcome contributions of any type or size, from anyone!

## Reporting issues

We always welcome reporting issues, whether it be bug reports
or feature requests, you can help guide the development of mastercomfig
to suit your needs and improve mastercomfig for everyone!

## Contact the maintainer

mastercomfig is currently maintained by mastercoms. You can contact me on
[Steam](https://steamcommunity.com/id/mastercoms),
[Reddit](https://www.reddit.com/user/mastercoms), or by email at
[support@mastercomfig.com](mailto:support@mastercomfig.com). I'd be happy to chat about any problems or
suggestions you have for mastercomfig.

## Docs

Have a screenshot, workaround, or anything else interesting you'd like to share?

Are you a translator who wishes to add or improve the documentation in your own language?

Contribute to the docs by clicking the edit button on any page you'd like to change!

You can also take a look at [the full source folder](https://github.com/mastercomfig/mastercomfig/tree/release/docs) to add new files or take a look around.

### Adding a new language

You can view currently supported languages [here](https://squidfunk.github.io/mkdocs-material/setup/setting-up-site-search/#built-in-search-plugin).

Add your language plus its native name to `plugins.i18n.languages` in `mkdocs.yml`.

### Adding content in a language

Add a `.[lang]` before the file type.

For example, `index.ru.md` or `logo.ru.png`.

### Referencing content on a localized page

When referencing content, like embedding an image or linking another page, you can refer to the base content directly without any language.

For example `![image](logo.png)` or `[link](./folder/page.md)`. It will automatically reference the translated version, or fall back to the default if not found.

### Localizing page titles

Translated page titles must be added to `mkdocs.yml` and `mkdocs.base.yml` under `nav_translations`.

### Remark checking

Documentation is checked with `remark` automatically through GitHub Actions for linting errors, using `pnpm lint`.

From time to time, link validity may also be checked using `pnpm checklinks`. This is not run automatically due to false positives.

Also, the quality of English prose may be checked with `pnpm prose`. This is not run automatically due to the subjective nature of writing.

## Support

You can help users who ask questions on [Discord](https://discord.gg/mastercomfig-389089828249010188).

## Config

Want to contribute to the config itself? Start here!

### Getting started

The config has a certain standard of quality for references and will not accept
changes based on simple hearsay or assumptions.

Every setting and change must be based on information
found in Team Fortress 2 [blog posts/patch notes](https://www.teamfortress.com/),
the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/SDK_Docs),
and the [Source SDK](https://github.com/ValveSoftware/source-sdk-2013),
so make sure those are available to you before you start contributing.
File overrides like DX support, shader cache, texture preload, and client precache
must be updated according to changes [tracked by Steam Database](https://github.com/SteamDatabase/GameTracking-TF2).

### Find a task

There might be TODOs within the files that need to be completed, issues that
need to be closed, or maybe something new you came up with. For any of these,
make sure you communicate that you're going contribute to resolve that issue or
implement that feature so that there isn't any duplicated work going on.

### Making changes

First things first: use spaces (no tabs) and CRLF line endings for configs, and
continue the Valve convention in the other file overrides. Ensure no trailing
space at the end of lines.

#### Launch options

Launch options are documented on the docs and are formatted like this:

`**-launchoption** : launch option description`

Make sure the description is not in sentence case and starts with a lowercase
letter. Additional notes following the description are sentences.

There are currently 4 categories for launch options:

* `Recommended`: These are launch options everyone should be using, as they benefit all users
* `Extra`: These are launch options people find to be personal preference or for use cases that cannot be applied to all users
* `Uncommon`: These are launch options most people will not use, but will still satisfy a valid use case
* `Experimental`: These are launch options that are being tested to be moved elsewhere as their effects are not clear

Put your launch option in the appropriate section and if it's in the
`Recommended` section, add it to the launch options line for copying.

Here are lists of launch options to help you out:

* [Windows](https://docs.comfig.app/page/tf2/launchopts_win/)
* [Linux](https://docs.comfig.app/page/tf2/launchopts_linux/)

Information about generating them can be found [here](https://docs.comfig.app/page/tf2/#making-your-own-launch-options-list).

#### Comfig and presets

Note: some additional information about the config can be found
[here](https://github.com/mastercomfig/mastercomfig/blob/release/config/README.md).

Add options like this:

```c
convar 0 // What the command does and a bit about what this default
         // value does, possibly with why it is the default
//convar 1 // What this alternative does
```

As you can see, default ConVar values are at the beginning, with
alternatives coming after. Unlike the launch options, use sentence case. Avoid
punctuation unless using multiple sentences.

##### CVarlist

ConVars and commands are found using [these instructions](https://docs.comfig.app/page/tf2/#making-your-own-cvar-list).

* [Windows](https://docs.comfig.app/page/tf2/cvarlist_win/)
* [Linux](https://docs.comfig.app/page/tf2/cvarlist_linux/)

Add your alternatives uncommented in the applicable presets/addons or use modules.

##### Presets

* `none`: Special preset which skips setting quality options
* `ultra`: Absolute maximum quality, with even the slightest and most performance-intensive quality improvements included
* `high`: Enables all graphical features without making them extremely high quality
* `medium-high`: Disables unoptimized features and optimize the game without making it look bad
* `medium`: The maximum performance you can get while enabling a few effects that may give you a slight edge
* `medium-low`: The maximum performance you can get without making the game too hard to play because of awful visual quality and glitches
* `low`: Maximum performance without caring much about visibility or possible bugs
* `very-low`: Negatively affects playability by a lot and disables very essential features in desperation for performance

##### Addons

* `no-footsteps`: Removes footstep sounds
* `disable-pyroland`: Removes Pyroland map textures
* `no-soundscapes`: Removes soundscapes (ambient map noise) and bird noises
* `no-tutorial`: Disables tutorial messages and other popups
* `flat-mouse`: Makes mouse input "flat" with stable input, no acceleration, and 1:1 zoom sensitivity
* `opengl`: Provides additional optimizations for OpenGL (macOS and Linux)
* `transparent-viewmodels`: Enables support for transparent viewmodels
* `null-canceling-movement`: Prevents you from pressing two opposing directions, which causes you to stop moving
* `lowmem`: Optimizations that generally do not affect quality for low memory (RAM) systems (2GB and lower)

##### Modules

If your settings affect quality in any way, create a new module or modify
the existing modules if applicable, then add documentation for it at the
[modules docs page](https://docs.comfig.app/page/customization/modules/).

The first part of adding modules is a multi-step process in `config/mastercomfig/cfg/comfig/comfig.cfg`:

* Add the module level alias(es) (`alias module_level "cvar1 1;cvar2 0`). For every command in the module, all levels must set that command unless there is no impact at that level.
* Add the set module level alias(es) (`alias module=level"alias module module_level"`).
* Possibly adjust presets in `config/cfg/presets` to use the new module or levels to an existing module.

If you are adding a new module, you will also need to add a new `module` entry in `config/mastercomfig/cfg/comfig/modules_run.cfg`

You also have to add your new module or levels to `data/modules.json` for download site support
and to `config/templates/modules/modules.cfg`.

#### Texture preload list

The `texture_preload_list.txt` file is designed to tell Team Fortress 2 which
textures to load on startup.
Strip all nonexistent textures from the default one if there is a major
TF2 update, and then add your changes. Preloaded textures must be common
enough to warrant the extra startup time and memory usage.

#### Client precache

The `scripts/client_precache.txt` file is similar to the texture preload list, but it is for sounds and models.
Also similarly to the texture preload list, strip any nonexistent entries
and then add your changes, making sure that the entries in the precache are
common enough to warrant the extra startup time and memory usage.

#### Shader cache

The OpenGL shader pair cache is located at `glbaseshaders.cfg` and `glbaseshaders_osx.cfg`.
This is a value store for each shader program, which is an indexed subkey. The first value
is the vertex shader name, the second is the pixel shader name, third is the vertex shader
static index, fourth is the pixel shader static index, fifth is the vertex shader dynamic index,
and sixth is the pixel shader dynamic index.

These files specify what shaders the game should precache, as a base. It also saves encountered shaders
to `glshaders.cfg`, which is precached on top of the base.

#### DX support

Edit `dxsupport_override.cfg` and set hidden ConVars and other settings
according to hardware and DirectX level. Make sure there are no updates to this
file from the game repository (unlikely, was last updated in 2013) before making
changes.

#### Game overrides

Some ConVars are set from what the map author specified so we have to override them.
This is currently done in modules.

#### DX Support overrides

Some ConVars cannot be set in-game, even with DX support definitions. Thus, some presets have
[custom packaging overrides](https://github.com/mastercomfig/mastercomfig/blob/release/dev/presets/package.sh#L52)
to set the value in DX support.

### Creating your pull request

Yay! You made your changes and now it's time to send it off to be included in
the config. [Create a new pull request](https://github.com/mastercomfig/mastercomfig/compare)
and name it something nice and descriptive! In your post, include an explanation
of the changes, why you made those changes, along with any other information you
find important.

### Testing Config Changes

There are several steps it is recommended you take before making or accepting changes to
the config. You can use Fraps or MSI Afterburner to get an FPS measurement of
matches.

#### Benchmarking

Use the [new test benchmark](https://mega.nz/#!f8tlhDhR!nYgghqybOK15ObUykEczewB3242XHb_bJ4JP0rv1q6k)
to do basic testing on options.

#### Bot match

After the results are positive with the benchmark, measure your average FPS in a
local 32-player bot match on `pl_upward`. (use `+maxplayers 32` in launch options).

#### Casual match

After the results are positive with the local bot match, measure your average
FPS in a filled casual match.

## Packaging

Generally you won't have to do this, but you can generate VPK packages for all
presets and addons. Use the `package.sh` script in the `dev/` folder. You can
learn more about the dev scripts in
[dev/README.md](https://github.com/mastercomfig/mastercomfig/blob/release/dev/README.md).

To successfully package presets and addons you need:

* Installed TF2 and Steam with all dependencies
* bash and basic UNIX tools
* [VPK](https://developer.valvesoftware.com/wiki/VPK#Linux_.2F_Unix)
* [gh](https://cli.github.com/)
    * You must authenticate beforehand, for example using [gh auth login](https://cli.github.com/manual/gh_auth_login), or the `GH_TOKEN` env var
* GNU parallel (optional)

Additionally, to generate No Tutorial addon, you will need to create a new file
in `dev/` called `mastercomfig-vars`, containing the following:

```bash
#!/bin/sh
export TF2_DIR="absolute path to your Team Fortress 2 directory"
```

This variable can also come from your system environment.

## Release and announce scripts

If you want to test the scripts that upload to GitHub and/or announce in Discord,
append the following to your `mastercomfig-vars` file:

```bash
export DISCORD_WEBHOOK="Discord webhook for release notifications"
```

These variables can also come from your system environment.

## Code of Conduct

As a member of the mastercomfig community, to foster a more welcoming environment,
you must abide by the [Code of Conduct](https://github.com/mastercomfig/mastercomfig/blob/release/.github/CODE_OF_CONDUCT.md).
