---
description: How to completely reset TF2, including uninstalling mastercomfig or other configs.
...

<div style="background: linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:1rem" class="md-typeset"><div><div style="display: flex;align-items: center;">
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

# Clean Up

!!! danger

    This will reset ALL settings. Make sure you back up your binds and other custom settings before you do this.

!!! info

    These steps are not required to install mastercomfig but document how to reset TF2 completely.

If you want to remove your config, delete any
configs you may have in `tf/custom` and delete the `tf/cfg` folder.
Then [verify your game files](https://help.steampowered.com/en/faqs/view/0C48-FCBD-DA71-93EB)
using Steam.

Next, if you have Steam Cloud Synchronization enabled, make all the files in
`STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` blank. Do not delete them, or
else Steam Cloud will redownload them. Alternatively, you can
[disable Steam Cloud](https://help.steampowered.com/en/faqs/view/68D2-35AB-09A9-7678#enabling).

Finally, launch TF2 with only the
`-novid -autoconfig -default +host_writeconfig config.cfg full +mat_savechanges +quit` launch
options. The game will launch and exit. Afterward, remove these launch options.
