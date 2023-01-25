---
description: Learn more about various technical details in TF2 itself.
...

# TF2 Documentation

mastercomfig is a project based upon learning more about the game, and using that knowledge to empower the community with an enhanced experience.

To that end, we compile resources that provide information

## Config documentation

An essential component of mastercomfig is the information gathered regarding console variables and launch options.

### Lists

You can view premade cvarlists, launch options lists, hidden cvarlists, and documentation about string commands.

* [Windows cvarlist](cvarlist_win.md)
* [Windows Launch option list](launchopts_win.md)
* [Linux cvarlist](cvarlist_linux.md)
* [Linux launch option list](launchopts_linux.md)
* [Hidden cvarlist](hiddencvars.md)
* [String commands](strcmds.md)

### Making your own cvar list

1. Remove mastercomfig VPK and add these launch options: `-novid -autoconfig -default -conclearlog -condebug +clear +cvarlist +quit`.
2. Launch TF2.
3. Remove launch options, add mastercomfig again.
4. Copy and paste `tf/console.log` cvarlist.

### Making your own hidden cvar list

Use the [sm_cvarlist](https://forums.alliedmods.net/showthread.php?p=1298262) SourceMod plugin.

### Making your own launch options list

On Windows you can use the [GetLaunchOptions.bat](https://pastebin.com/bhQrywES) script.

On Linux you can use the following commands: `find . -type f \( -name "*.so" -o -name "hl2_linux" \) -print0 | xargs -0 strings | grep "^\-[A-Za-z]" | awk 'NF==1' | sort -u > launch_options.txt`

## HUD Documentation

Another popular aspect of customization for TF2 is custom HUDs, which enable community members to modify the menu UI and in-game HUD.

The HUD uses a vast system called VGUI2, and it is documented by many HUD authors:

[Visit the HUD documentation hub for more information](huds/index.md)
