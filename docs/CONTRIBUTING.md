# Reporting issues

1. Search [current issues](https://github.com/mastercoms/tf2cfg/issues)
   and [troubleshooting steps](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting)
   to see if your issue is already known.
2. If not, [create an issue](https://github.com/mastercoms/tf2cfg/issues/new).
3. Title your issue with something short but descriptive, like "Missing models
   on load", not "i need help" or "hey problem found in your config please fix,
   thanks!!"
4. Include the following information in your report:
    * How you encountered the issue
    * Config version (don't say latest, say the actual version, found in the
      startup console output)
    * Config preset and addon(s)
    * Custom values (if any)
    * DX level
    * Launch options
    * Operating system (OS)
    * Graphics card (GPU)
    * Processor (CPU)
    * HDD or SSD
    * RAM size in MB or GB

# Requesting new features

1. Search [current issues](https://github.com/mastercoms/tf2cfg/issues)
   to see if your feature has already been requested.
2. If not, [create a feature request](https://github.com/mastercoms/tf2cfg/issues/new).
3. Title your feature request with something short but descriptive, not "cool
    idea i had" or "please look at this one thanks very much".
4. Describe the feature you want as much detail as you can, and also explain why
   the feature should be included.

# Contact the maintainer

mastercomfig is currently maintained by mastercoms. You can contact me on
[Steam](https://steamcommunity.com/id/mastercoms),
[teamfortress.tv](http://www.teamfortress.tv/user/mastercoms) or
[Reddit](https://www.reddit.com/user/mastercoms).

# Contributing

## Wiki

Have a screenshot, workaround or anything else interesting you'd like to share?
Contribute to the [wiki](https://github.com/mastercoms/mastercomfig/wiki).

## Contributing to the Config

Want to contribute to the config itself? Start here!

### Getting started

This config has a certain standard of quality for references and will not accept
changes based on simple hearsay or assumptions.

Every setting and change should be based on information
found in Team Fortress 2 [blog posts/patch notes](http://www.teamfortress.com/),
the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/SDK_Docs),
the [Source SDK](https://github.com/ValveSoftware/source-sdk-2013) and the Source
2007 source code leak, so make sure those are available to you before you start
contributing. File overrides like `dxsupport_override.cfg`, the shader cache
files and `texture_preload_list.txt` must be updated according to changes
[tracked by Steam Database](https://github.com/SteamDatabase/GameTracking-TF2).

### Find a task

There might be TODOs within the files that need to be completed, issues that
need to be closed or maybe something new you came up with. For any of these,
make sure you communicate that you're going contribute to resolve that issue or
implement that feature so that there isn't any duplicated work going on.

### Making changes

First things first: use spaces (no tabs) and CRLF line endings for configs, and
continue the Valve convention in the other file overrides. Ensure no trailing
space at the end of lines. Max line length should be 100.

#### Launch options

Comment launch options like this:

`-launchoption : launch option description`

Make sure the description is not sentence case and starts with a lowercase
letter.

There are currently 4 categories for launch options:

* `Launch Options`: These are launch options everyone should be using, as they
  benefit all users
* `Extra`: These are launch options people find to be personal preference or for
  use cases that cannot be applied to all users
* `Experimental`: These are launch options that are being tested to be moved
  elsewhere as their effects are not clear
* `Niche`: These are launch options most people will not use, but will still
  satisfy a valid use case

Put your launch option in the appropriate section and if it's in the
`Launch Options` section, add it to the launch options line for easy copying.

Here's [a list](https://gist.github.com/mastercoms/12c51b171e2d3589eedc6bc9905e8f5e)
of launch options to help you out.

They were generated using Aveyo's [GetLaunchOptions tool](https://github.com/AveYo/D-OPTIMIZER/blob/master/GetLaunchOptions.bat).

#### Comfig and presets

Add options like this

```
convar 0 // What the command does and a bit about what this default
         // value does, possibly with why it is the default
//convar 1 // What this alternative does
```

As you can see, default ConVar values should be at the beginning, with
alternatives coming after. Unlike the launch options, use sentence case. Avoid
punctuation unless using multiple sentences.

Default values are ones that disable unoptimized features and optimize the game without making it look bad.

ConVars and commands are found by launching TF2 with
`-novid -default -autoconfig -condebug +cvarlist +quit` and then reading
`tf/console.log`.

Add your alternatives uncommented in the applicable presets/addons:

**Presets:**

* `maxquality`: Absolute maximum quality without caring about performance
* `midquality`: Enables graphical features missing from default without making
  them higher quality
* `maxperformance`: The maximum performance you can get without caring much
  about visibility or possible bugs
* `compquality`: The maximum performance you can get while enabling features
  that may give you an information advantage and disabling optimizations that
  may reduce accuracy
* `comp`: The maximum performance you can get without making the game too hard
  to play because of awful visual quality and glitches
* `stripped`: Negatively affects playability by a lot and disables very
  essential features in desperation for performance

**Addons:**

* `badcpu`: Optimizations that generally do not affect quality that are only
  optimal on weaker, dual core CPUs
* `badgpu`: Optimizations that do not affect quality that are only optimal for
  weak integrated graphics chips (Intel graphics) or weak/old GPUs
  (lower end made before 2007)
* `ssd`: Memory and loading optimizations for when your TF2 installation is on
  a SSD.

#### Texture preload list

The `texture_preload_list.txt` is designed to tell Team Fortress 2 which
textures to load on startup.
Strip all nonexistent textures from the default one if there is a major
TF2 update, and then add your changes. Preloaded textures should be common
enough to warrant the extra startup time and memory usage.

#### Client precache

This is similar to the texture preload list, but it is for sounds and models.
Also similarly to the texture preload list, strip any nonexistent entries
and then add your chages, making sure that the entries in the precache are
common enough to warrant the extra startup time and memory usage.

#### Shader cache

This comes in two parts: the main shader cache at `shader_cache.cfg` and the
OpenGL shader pair cache at `glshaders.cfg` and `glbaseshaders.cfg`. The main
shader cache is a key value store for each shader, with the key being the
bytecode index and value being the bytecode size. This can be used to enable or
disable shader caching for certain shaders. The OpenGL shader pair cache is a
bit different, with the numbers being indices.

#### DirectX support

Edit `dxsupport_override.cfg` and set hidden ConVars and other settings
according to hardware and DirectX level. Make sure there are no updates to this
file from the game repository (unlikely, was last updated in 2013) before making
changes.

## Making your pull request

Yay! You made your changes and now it's time to send to off to be included in
the config. Just [make a new pull request](https://github.com/mastercoms/tf2cfg/compare)
and name it something nice and descriptive! In your post, why you made the
change along with any other information you find important.

# Testing Config Changes

There are several steps you should take before making or accepting changes to
the config. You can use Fraps or MSI Afterburner to get a FPS measurement of
matches.

## Benchmarking

Use [mastercoms' new test benchmark](https://mega.nz/#!f8tlhDhR!nYgghqybOK15ObUykEczewB3242XHb_bJ4JP0rv1q6k)
to do basic testing on options.

## Bot match

After the results are positive with the benchmark, measure your average FPS in a
local 24 player bot match on `cp_gorge`, highest difficulty.

## Casual match

After the results are positive with the local bot match, measure your average
FPS in a filled casual match.

# Packaging and Releases

Generally you won't have to do this, but you can generate VPK packages for all
presets and addons as well as a ZIP for the config. Use the `package.sh` script
in the `dev` folder.
