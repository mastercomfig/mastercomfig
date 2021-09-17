# TF2 Documentation

## Premade lists

You can view premade cvarlists, launch options lists and hidden cvarlists.

* [Windows cvarlist](tf2/cvarlist_win.md)
* [Windows Launch option list](tf2/launchopts_win.md)
* [Linux cvarlist](tf2/cvarlist_linux.md)
* [Linux launch option list](tf2/launchopts_linux.md)
* [Hidden cvarlist](tf2/hiddencvars.md)

## Making your own cvar list

1. Remove mastercomfig VPK and add these launch options: `-novid -autoconfig -default -conclearlog -condebug +clear +cvarlist +quit`.
2. Launch TF2.
3. Remove launch options, add mastercomfig again.
4. Copy and paste `tf/console.log` cvarlist.

## Making your own hidden cvar list

Use the [sm_cvarlist](https://forums.alliedmods.net/showthread.php?p=1298262) SourceMod plugin.

## Making your own launch options list

On Windows you can use the [GetLaunchOptions.bat](https://pastebin.com/bhQrywES) script.

On Linux you can use the following commands: `find . -type f \( -name "*.so" -o -name "hl2_linux" \) -print0 | xargs -0 strings | grep "^\-[A-Za-z]" | awk 'NF==1' | sort -u > launch_options.txt`
