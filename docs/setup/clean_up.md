---
description: How to completely reset TF2, including uninstalling mastercomfig or other configs.
...

# Clean Up

!!! danger

    This will reset ALL settings. Make sure you back up your binds and other custom settings before you do this.

!!! info

    These steps are no longer required to install mastercomfig, but is kept here to document how to completely reset TF2.

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
options. The game will launch and exit. Afterwards, remove these launch options.
