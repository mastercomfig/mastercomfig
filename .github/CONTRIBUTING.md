# Contributing

As an open source project, mastercomfig appreciates the community's help in improving it.

We welcome contributions of any type or size, from anyone!

## Reporting issues

We always welcome reporting issues, whether it be bug reports
or feature requests, you can help guide the development of mastercomfig
to suit your needs and improve the config for everyone!

## Contact the maintainer

mastercomfig is currently maintained by mastercoms. You can contact me on
[Steam](https://steamcommunity.com/id/mastercoms),
[Reddit](https://www.reddit.com/user/mastercoms) or by email at
mastercoms@tuta.io. I'd be happy to chat about any problems or
suggestions you have for the config.

## Contributing

### Docs

Have a screenshot, workaround or anything else interesting you'd like to share?
Contribute to the [docs](https://github.com/mastercomfig/mastercomfig/tree/release/docs).

### Support

You can help users who ask questions on [Discord](https://discord.gg/CuPb2zV), [Steam Discussions](https://steamcommunity.com/groups/comfig/discussions) or [teamfortress.tv](https://www.teamfortress.tv/42867/mastercomfig-fps-customization-config).

### Contributing to the Config

Want to contribute to the config itself? Start here!

#### Getting started

This config has a certain standard of quality for references and will not accept
changes based on simple hearsay or assumptions.

Every setting and change should be based on information
found in Team Fortress 2 [blog posts/patch notes](https://www.teamfortress.com/),
the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/SDK_Docs),
the [Source SDK](https://github.com/ValveSoftware/source-sdk-2013),
so make sure those are available to you before you start contributing.
File overrides like DX support, shader cache, texture preload and client precache
must be updated according to changes [tracked by Steam Database](https://github.com/SteamDatabase/GameTracking-TF2).

#### Find a task

There might be TODOs within the files that need to be completed, issues that
need to be closed or maybe something new you came up with. For any of these,
make sure you communicate that you're going contribute to resolve that issue or
implement that feature so that there isn't any duplicated work going on.

#### Making changes

First things first: use spaces (no tabs) and CRLF line endings for configs, and
continue the Valve convention in the other file overrides. Ensure no trailing
space at the end of lines. Max line length should be 100.

##### Launch options

Launch options are documented on the docs and are formatted like this:

`**-launchoption** : launch option description`

Make sure the description is not sentence case and starts with a lowercase
letter.

There are currently 4 categories for launch options:

* `Launch Options`: These are launch options everyone should be using, as they
  benefit all users
* `Extra`: These are launch options people find to be personal preference or for
  use cases that cannot be applied to all users
* `Uncommon`: These are launch options most people will not use, but will still
  satisfy a valid use case
* `Experimental`: These are launch options that are being tested to be moved
  elsewhere as their effects are not clear

Put your launch option in the appropriate section and if it's in the
`Launch Options` section, add it to the launch options line for easy copying.

Here's lists of launch options to help you out:

* [Windows](https://docs.mastercomfig.com/en/latest/tf2/launchopts_win/)
* [Linux](https://docs.mastercomfig.com/en/latest/tf2/launchopts_linux/)

Information about generating them can be found [here](https://docs.mastercomfig.com/en/latest/tf2/#launch_options).

##### Comfig and presets

Note: some additional information about the config can be found
[here](https://github.com/mastercomfig/mastercomfig/blob/release/config/README.md).

Add options like this

```c
convar 0 // What the command does and a bit about what this default
         // value does, possibly with why it is the default
//convar 1 // What this alternative does
```

As you can see, default ConVar values should be at the beginning, with
alternatives coming after. Unlike the launch options, use sentence case. Avoid
punctuation unless using multiple sentences.

ConVars and commands are found using [these instructions](https://docs.mastercomfig.com/en/latest/tf2/#making-your-own-cvar-list).

Premade lists:

* [Windows](https://docs.mastercomfig.com/en/latest/tf2/cvarlist_win/)
* [Linux](https://docs.mastercomfig.com/en/latest/tf2/cvarlist_linux/)

Add your alternatives uncommented in the applicable presets/addons, or use modules:

**Presets:**

* `ultra`: Absolute maximum quality, with even the slightest and most performance-intensive quality improvements included
* `high`: Enables all graphical features without making them extremely high quality
* `medium-high`: Disables unoptimized features and optimize the game without
  making it look bad
* `medium`: The maximum performance you can get while enabling a few effects
  that may give you a slight edge
* `medium-low`: The maximum performance you can get without making the game too
  hard to play because of awful visual quality and glitches
* `low`: Maximum performance without caring much about visibility or possible
  bugs
* `very-low`: Negatively affects playability by a lot and disables very
  essential features in desperation for performance

**Addons:**

* `no-footsteps`: Removes footstep sounds
* `disable-pyroland`: Removes Pyroland map textures
* `no-soundscapes`: Remove soundscapes (ambient map noise) and bird noises
* `no-tutorial`: Disables tutorial messages and other popups
* `flat-mouse`: Makes mouse input "flat" with stable input, no acceleration and 1:1 zoom sensitivity
* `transparent-viewmodels`: Enables support for transparent viewmodels
* `badgpu`: Optimizations that generally do not affect quality for weak integrated graphics chips (Intel HD graphics) or old GPUs (lower end made before 2007)
* `lowmem`: Optimizations that generally do not affect quality for low memory (RAM) systems (4GB and lower)

**Modules:**

If your settings affect quality in any way, create a new module or modify
the existing modules if applicable, then add documentation for it at the
[modules docs page](https://docs.mastercomfig.com/en/latest/customization/modules/).
Use [this generator](https://github.com/ekalinin/github-markdown-toc) to get
the navigation links to be generated properly.

##### Texture preload list

The `texture_preload_list.txt` file is designed to tell Team Fortress 2 which
textures to load on startup.
Strip all nonexistent textures from the default one if there is a major
TF2 update, and then add your changes. Preloaded textures should be common
enough to warrant the extra startup time and memory usage.

##### Client precache

The `scripts/client_precache.txt` file is similar to the texture preload list, but it is for sounds and models.
Also similarly to the texture preload list, strip any nonexistent entries
and then add your changes, making sure that the entries in the precache are
common enough to warrant the extra startup time and memory usage.

##### Shader cache

The OpenGL shader pair cache is located at `glbaseshaders.cfg` and `glbaseshaders_osx.cfg`.
This is a value store for each shader program, which is an indexed subkey. The first value
is the vertex shader name, the second is the pixel shader name, third is the vertex shader
static index, fourth is the pixel shader static index, fifth is the vertex shader dynamic index
and sixth is the pixel shader dynamic index.

##### DX support

Edit `dxsupport_override.cfg` and set hidden ConVars and other settings
according to hardware and DirectX level. Make sure there are no updates to this
file from the game repository (unlikely, was last updated in 2013) before making
changes.

##### Game overrides

Some ConVars are set from what the map author specified so we have to override them.
This is currently done in modules.

##### DX Support overrides

Some ConVars cannot be set in-game, even with DX support definitions. Thus, some presets have
[custom packaging overrides](https://github.com/mastercomfig/mastercomfig/blob/release/dev/presets/package.sh#L39)
to set the value in DX support.

### Making your pull request

Yay! You made your changes and now it's time to send it off to be included in
the config. Just [make a new pull request](https://github.com/mastercomfig/mastercomfig/compare)
and name it something nice and descriptive! In your post, include an explanation
of the changes, why you made those changes, along with any other information you
find important.

## Testing Config Changes

There are several steps you should take before making or accepting changes to
the config. You can use Fraps or MSI Afterburner to get a FPS measurement of
matches.

### Benchmarking

Use [mastercoms' new test benchmark](https://mega.nz/#!f8tlhDhR!nYgghqybOK15ObUykEczewB3242XHb_bJ4JP0rv1q6k)
to do basic testing on options.

### Bot match

After the results are positive with the benchmark, measure your average FPS in a
local 32 player bot match on `pl_upward`. (use `+maxplayers 32` in launch options).

### Casual match

After the results are positive with the local bot match, measure your average
FPS in a filled casual match.

## Packaging and Releases

Generally you won't have to do this, but you can generate VPK packages for all
presets and addons. Use the `package.sh` script in the `dev/` folder. You can
learn more about the dev scripts in
[dev/README.md](https://github.com/mastercomfig/mastercomfig/blob/release/dev/README.md).

In order to successfully deploy and announce, you will have to create a new file
in `dev/` called `mastercomfig-vars`, containing the following variables:

```bash
export DISCORD_WEBHOOK="Discord webhook for config announcements"
export GH_USERNAME="GitHub username used for authentication for release deployment"
export GH_TOKEN="GitHub authentication token used for release deployment"
export TF2_DIR="absolute path to your Team Fortress 2 directory"
```

## Code of Conduct

As a member of the mastercomfig community, in order to foster a more welcoming environment,
you must abide by the [Code of Conduct](https://github.com/mastercomfig/mastercomfig/blob/release/.github/CODE_OF_CONDUCT.md)
