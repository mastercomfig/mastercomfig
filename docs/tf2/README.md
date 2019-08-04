# TF2 documentation generation

## cvarlist_linux
A list of Linux TF2 cvars.

## cvarlist_win
A list of Windows TF2 cvars.

## Making your own cvar list

1. Remove mastercomfig VPK and add these launch options: `-novid -autoconfig -default -conclearlog -condebug +cvarlist +quit`.
2. Launch TF2
3. Remove launch options, add mastercomfig again.
4. Copy and paste `tf/console.log` cvarlist.

## hiddencvars

Use the [sm_cvarlist](https://forums.alliedmods.net/showthread.php?p=1298262) SourceMod plugin.

## launch_options

Get Windows launch options: https://github.com/AveYo/D-OPTIMIZER/blob/archive/GetLaunchOptions.bat

Get Linux launch options: `find . -type f -name "*.so" | xargs strings | grep "^\-[a-ZA-Z]" | awk 'NF==1' | sort -u >> launch_options.txt`
