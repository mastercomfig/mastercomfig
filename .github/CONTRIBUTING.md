# Contributing

## Reporting issues

We always welcome reporting issues, whether it be bug reports
or feature requests, you can help guide the development of mastercomfig
to suit your needs and improve the config for everyone!

## Contact the maintainer

mastercomfig is currently maintained by mastercoms. You can contact me on
[Steam](https://steamcommunity.com/id/mastercoms),
[teamfortress.tv](https://www.teamfortress.tv/user/mastercoms),
[Reddit](https://www.reddit.com/user/mastercoms) or by email at
mastercoms@tuta.io. I'd be happy to chat about any problems or
suggestions you have for the config.

## Contributing

### Wiki

Have a screenshot, workaround or anything else interesting you'd like to share?
Contribute to the [wiki](https://github.com/mastercoms/mastercomfig/wiki).

### Contributing to the Config

Want to contribute to the config itself? Start here!

#### Getting started

This config has a certain standard of quality for references and will not accept
changes based on simple hearsay or assumptions.

Every setting and change should be based on information
found in Team Fortress 2 [blog posts/patch notes](https://www.teamfortress.com/),
the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/SDK_Docs),
the [Source SDK](https://github.com/ValveSoftware/source-sdk-2013) and the Source
2007 source code leak, so make sure those are available to you before you start
contributing. File overrides like `dxsupport_override.cfg`, the shader cache
files and `texture_preload_list.txt` must be updated according to changes
[tracked by Steam Database](https://github.com/SteamDatabase/GameTracking-TF2).

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

Launch options are documented on the wiki and are formatted like this:

`**-launchoption** : launch option description`

Make sure the description is not sentence case and starts with a lowercase
letter.

There are currently 4 categories for launch options:

* `Launch Options`: These are launch options everyone should be using, as they
  benefit all users
* `Extra`: These are launch options people find to be personal preference or for
  use cases that cannot be applied to all users
* `Niche`: These are launch options most people will not use, but will still
  satisfy a valid use case
* `Experimental`: These are launch options that are being tested to be moved
  elsewhere as their effects are not clear

Put your launch option in the appropriate section and if it's in the
`Launch Options` section, add it to the launch options line for easy copying.

Here's [a list](https://github.com/mastercoms/mastercomfig/blob/release/docs/tf2/launch_options.txt)
of launch options to help you out.

Information about generating them can be found [here](https://github.com/mastercoms/mastercomfig/tree/release/docs/tf2#launch_options).

##### Comfig and presets

Note: some additional information about the config can be found
[here](https://github.com/mastercoms/mastercomfig/blob/release/config/README.md).

Add options like this

```
convar 0 // What the command does and a bit about what this default
         // value does, possibly with why it is the default
//convar 1 // What this alternative does
```

As you can see, default ConVar values should be at the beginning, with
alternatives coming after. Unlike the launch options, use sentence case. Avoid
punctuation unless using multiple sentences.

ConVars and commands are found using [these instructions](https://github.com/mastercoms/mastercomfig/tree/release/docs/tf2#cvarlist).

Add your alternatives uncommented in the applicable presets/addons, or use modules:

**Presets:**

* `ultra`: Absolute maximum quality without caring about performance
* `high`: Enables graphical features without making them very high quality
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

* `no-extra-models`: Removes extra models like rockets in the background, UFOs and
UFO posters
* `no-footsteps`: Removes footstep sounds
* `no-pyroland`: Removes Pyroland map textures
* `no-soundscapes`: Remove soundscapes (ambient map noise) and bird noises
* `no-tutorial`: Disables tutorial messages and other popups
* `flat-mouse`: Makes mouse input "flat" with stable input, no acceleration and 1:1 zoom sensitivity
* `transparent-viewmodels`: Enables support for transparent viewmodels
* `badcpu`: Optimizations that generally do not affect quality for bad CPUs
  with two or less threads
* `badgpu`: Optimizations that generally do not affect quality for
weak integrated graphics chips (Intel graphics) or
weak/old GPUs (lower end made before 2007)
* `slowio`: Optimizations that generally do not affect quality for slow disk drives
* `lowmem`: Optimizations that generally do not affect quality for low memory (RAM) systems (4GB and lower)

**Modules:**

If your settings affect quality in any way, create a new module or modify
the existing modules if applicable, then add documentation for it at the
[modules wiki page](https://github.com/mastercoms/mastercomfig/wiki/Modules).
Use [this generator](https://github.com/ekalinin/github-markdown-toc) to get
the navigation links to be generated properly.

##### Texture preload list

The `texture_preload_list.txt` is designed to tell Team Fortress 2 which
textures to load on startup.
~~Strip all nonexistent textures from the default one if there is a major
TF2 update, and then add your changes. Preloaded textures should be common
enough to warrant the extra startup time and memory usage.~~
Currently, mastercomfig removes all textures from this list in order to
increase FPS and reduce memory usage.

##### Client precache

This is similar to the texture preload list, but it is for sounds and models.
~~Also similarly to the texture preload list, strip any nonexistent entries
and then add your chages, making sure that the entries in the precache are
common enough to warrant the extra startup time and memory usage.~~
Currently, mastercomfig removes all but the UI models from this file in order to
increase FPS and reduce memory usage.

##### Shader cache

This comes in two parts: the main shader cache at `shader_cache.cfg` and the
OpenGL shader pair cache at `glshaders.cfg` and `glbaseshaders.cfg`. The main
shader cache is a key value store for each shader, with the key being the
bytecode index and value being the bytecode size. This can be used to enable or
disable shader caching for certain shaders. The OpenGL shader pair cache is a
bit different, with the numbers being indices.

##### DirectX support

Edit `dxsupport_override.cfg` and set hidden ConVars and other settings
according to hardware and DirectX level. Make sure there are no updates to this
file from the game repository (unlikely, was last updated in 2013) before making
changes.

##### Game overrides

Some ConVars are set from what the map author specified so we have to override them.
This is currently done [in](https://github.com/mastercoms/mastercomfig/blob/release/dev/presets/package.sh#L51)
the packaging process.

### Making your pull request

Yay! You made your changes and now it's time to send it off to be included in
the config. Just [make a new pull request](https://github.com/mastercoms/mastercomfig/compare)
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
local 24 player bot match on `pl_upward`, highest difficulty.

### Casual match

After the results are positive with the local bot match, measure your average
FPS in a filled casual match.

## Packaging and Releases

Generally you won't have to do this, but you can generate VPK packages for all
presets and addons. Use the `package.sh` script in the `dev/` folder. You can
learn more about the dev scripts in
[dev/README.md](https://github.com/mastercoms/mastercomfig/blob/release/dev/README.md).

In order to successfully deploy and announce, you will have to create a new file
in `dev/` called `mastercomfig-vars`, containing the following variables:

```bash
export DISCORD_WEBHOOK="Discord webhook for config announcements"
export GH_USERNAME="GitHub username used for authentication for release deployment"
export GH_TOKEN="GitHub authentication token used for release deployment"
```
