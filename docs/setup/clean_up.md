# Clean Up

**NOTE: This will reset ALL settings. Make sure you back up your binds and other
custom settings before you do this.**

If you have already have a config, or want to remove mastercomfig, delete any
configs you may have in `tf/custom` and delete the `tf/cfg` folder.
Then [verify your game files](https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335)
using Steam.

Next, if you have Steam Cloud Synchronization enabled, make all the files in
`STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` blank. Do not delete them, or
else Steam Cloud will redownload them. Alternatively, you can
[disable Steam Cloud](https://support.steampowered.com/kb_article.php?ref=6736-QEIG-8941#enabling).

Finally, launch TF2 with only the
`-novid -default -autoconfig +host_writeconfig +mat_savechanges +quit` launch
options. The game will launch and exit. Afterwards, remove these launch options.
