# Reporting issues

1. Search [current issues](https://github.com/mastercoms/tf2cfg/issues)
and [troubleshooting steps](https://github.com/mastercoms/tf2cfg/wiki/Troubleshooting)
to see if your issue is already known.
2. If not, [create an issue](https://github.com/mastercoms/tf2cfg/issues/new).
3. Title your issue with something short but descriptive, like "Missing models on load",
not "i need help" or "hey problem found in your config please fix, thanks!!"
4. Include the following information in your report:
    * How you encountered the issue
    * Config version
    * Config preset(s)
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
3. Title your feature request with something short but descriptive, not "cool idea i had" or "please look at this one thanks very much".
4. Describe the feature you want as much detail as you can, and also explain why the feature should be included.

# Contact the maintainer

Mastercomfig is currently maintained by mastercoms. You can contact me on Steam, TeamFortress.TV or on Reddit.

# Contributing

## Wiki

Have a screenshot, workaround or anything else interesting you'd like to share? Contribute to the wiki.

## Contributing to the Config

Want to contribute to the config itself? Start here!

### Getting started

This config has a certain standard of quality for references and will not accept changes based on simple hearsay
or assumptions.

Every setting and change should be based on information
found in Team Fortress 2 [blog posts/patch notes](http://www.teamfortress.com/), 
the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/SDK_Docs),
the [Source SDK](https://github.com/ValveSoftware/source-sdk-2013) and the Source 2007 source code leak, so make
sure those are available to you before you start contributing. File overrides like `dxsupport_override.cfg`, the shader 
cache files and `texture_preload_list.txt` must be updated according to changes
[tracked by Steam Database](https://github.com/SteamDatabase/GameTracking-TF2).

### Find a task

There might be TODOs within the files that need to be completed, issues that need to be closed or maybe something new
you came up with. For any of these, make sure you communicate that you're going contribute to resolve that issue or
implement that feature so that there isn't any duplicated work going on.

### Making changes

First things first: use spaces and CRLF line endings for configs, and continue the convention in the other file overrides.
Ensure no trailing spaces at the end of lines. I haven't established a max column count yet, but a general rule of thumb is
to follow the general breaks that already happen, and ensure you're able to read without horizontally scrolling on half
of a 1080p desktop display with 1.00 scaling.

#### Launch options

Comment launch options like this:

`-launchoption : launch option description`

Make sure the description is not sentence case and starts with a lowercase letter.

There are currently 4 categories for launch options: 

* `Launch Options`: These are launch options everyone should be using, as they benefit all users
* `Extra`: These are launch options people find to be personal preference or for use cases that cannot be applied to all users
* `Experimental`: These are launch options that are being tested to be moved elsewhere as their effects are not clear
* `Niche`: These are launch options most people will not use, but will still satisfy a valid use case

Put your launch option in the appropriate section and if it's in the `Launch Options` section, add it to the launch options line
for easy copying.

Here's [a list](https://gist.github.com/mastercoms/12c51b171e2d3589eedc6bc9905e8f5e) of launch options to help you out.

They were generated using Aveyo's [GetLaunchOptions tool](https://github.com/AveYo/D-OPTIMIZER/blob/master/GetLaunchOptions.bat).

#### Cfg and presets

Add options like this

```
convar 0 // What the command does and a bit about what this default
          // value does, possibly with why it is the default
//convar 1 // What this alternative does
```

As you can see, default ConVar values should be at the beginning, with alternatives coming after.
Unlike the launch options, use sentence case. Avoid punctuation unless using multiple sentences.

ConVars and commands are found by launching TF2 with `-novid -default -autoconfig -condebug +cvarlist +quit` and
then reading `tf/console.log`.

Add your alternatives uncommented to applicable presets:

* `maxperformance`: The maximum performance you can get without too much consideration to playability
* `comp`: The maximum performance you can get without making the game too hard to play from awful visual quality and glitches
* `compquality`: The maximum performance you can get without losing any features that may give you an information advantage
* `maxquality`: The maximum quality you can get without any regards to performance
* `badcpu`: Optimizations that generally do not affect quality that are only optimal on weaker, dual core CPUs
* `badgpu`: Optimizations that do not affect quality that are only optimal when you are GPU bound
* `stripped`: Things that negatively affect playability by a lot, or disable very essential features

#### Texture preload list

The `texture_preload_list.txt` is designed to tell Team Fortress 2 which textures to load on startup.
Strip all nonexistant textures from the default one if there is a major TF2 update, and then add your changes.
Preloaded textures should be common enough to warrant the extra startup time and memory usage.

#### Shader cache

This comes in two parts: the main shader cache at `shader_cache.cfg` and the OpenGL shader pair cache at `glshaders.cfg`
and `glbaseshaders.cfg`. The main shader cache is a key value store for each shader, with the key being the bytecode index
and value being the bytecode size. This can be used to enable or disable shader caching for certain shaders. The OpenGL
shader pair cache is a bit different, with the numbers being indices.

#### DirectX support

Edit `dxsupport_override.cfg` and set hidden ConVars and other settings according to hardware and DirectX level.
Make sure there are no updates to this file from the game repository (unlikely, was last updated in 2013) before making changes.

## Making your pull request

Yay! You made your changes and now it's time to send to off to be included in the config. Just 
[make a new pull request](https://github.com/mastercoms/tf2cfg/compare) and name it something nice and
descriptive! In your post, why you made the change along with any other information you find important.

# Testing Config Changes

There are several steps you should take before making or accepting changes to the config. You can use Fraps or
MSI Afterburner to get a FPS measurement of matches.

## Benchmarking

Use [mastercoms' new test benchmark](https://mega.nz/#!f8tlhDhR!nYgghqybOK15ObUykEczewB3242XHb_bJ4JP0rv1q6k) to do 
basic testing on options.

## Bot match

After the results are positive with the benchmark, measure your average FPS in a local 24 player bot match on `cp_gorge`, highest difficulty.

## Casual match

After the results are positive with the local bot match, measure your average FPS in a filled casual match.

# Packaging and Releases

Generally you won't have to do this, but you can generate VPK packages for all presets and addons as well as a ZIP for
the config. Use the `package.sh` script in the `dev` folder.
