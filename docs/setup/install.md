---
description: Steps on how to install mastercomfig and get it set up properly.
...

<div style="background: linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:0.5rem 1rem;display: flex;align-items: center" class="md-typeset">
    <div>
        <a href="https://tradeit.gg/?aff=comfig">
            <img style="height:8rem;width:8rem;aspect-ratio:1/1;display: inline-block;" alt="tradeit.gg logo" src="https://mastercomfig.com/img/third_party/tradeit.webp" width="128" height="128">
        </a>
    </div>
    <div style="margin-left: 0.5rem;">
        <a href="https://tradeit.gg/?aff=comfig">
            <p style="color:#fff">
                <strong>Trade, buy or sell items</strong><br>
                Trade items instantly for real money with the lowest fees.<br>
                Fully automated. Over 45 million successful trades.
            </p>
        </a>
    </div>
</div>

# How to install mastercomfig

1. [Use the app to generate](https://mastercomfig.com/app) a mastercomfig package of your choosing.
2. Go to your Steam library and right-click on Team Fortress 2.
3. Click Properties...
4. Set these launch options: `-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime`. For more information, read the [launch options customization guide](../customization/launch_options.md).
5. Click the Local Files tab.
6. Click Browse...
7. A `Team Fortress 2` folder is opened.
8. Extract the `tf` folder  in the mastercomfig.zip into this folder.

## Custom configs

If you have any of the following files, you must do some extra steps to get them to work with mastercomfig:

```txt
autoexec.cfg
listenserver.cfg
scout.cfg
soldier.cfg
pyro.cfg
demoman.cfg
heavyweapons.cfg
engineer.cfg
medic.cfg
sniper.cfg
spy.cfg
```

1. Create an `overrides` folder where these files are located (most likely `tf/cfg`).
2. Drag these files into the newly created `overrides` folder.

!!! tip
    Although not required, if you move any other files (for example, `binds.cfg`), you will have to update the `exec` command from `exec binds.cfg` to `exec overrides/binds.cfg`.

## Next Steps

### Quick Fixes

Encountering any issues? See the [Quick Fixes guide](../next_steps/quick_fixes.md) for help.

### Customization

Want to personalize your TF2 even further?

* See how you can [customize individual settings](../customization/custom_configs.md)
* Want to customize a bunch of settings at once easily? [Check out the modules system](../customization/modules.md)
* Tune your [launch options](../customization/launch_options.md) to get better performance and quality for your system
* Get inspired by other people's [custom configs](../customization/custom_config_list.md)
* Take a look at some other [notable TF2 community content](../customization/see_also.md)
* [Optimize your OS](../os/index.md) to squeeze out even more performance
