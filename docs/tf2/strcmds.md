---
description: A list of all client string commands in TF2.
search:
  exclude: true
...

# Client string commands

Client string commands, also known as strcmds or nonccmds, are strings forwarded to the server for processing, rather than being handled by the client's command system.

This process occurs when a command is not found in the client, or when the `cmd` command is used to directly forward the command to the server. You can also run this for bots using `bot_command`.

!!! warning
    Documentation is a work in progress. No descriptions yet.

There are a few types of string commands:

* Engine client commands: these are special commands already registered on the client and server as console commands, but are handled through string forwarding
* Dispatch client commands: these are console commands only registered on the server (flagged as GAMEDLL), but are accepted to be run by the client
* Client commands: these are all other commands, which are parsed manually by handlers through their string command and arguments

* `demorestart`
* `voicemenu`
* `vban`
* `VModEnable`
* `tournament_readystate`
* `tournament_teamname`
* `tournament_player_readystate`
* `objcmd`
* `nextmap`
* `timeleft`
* `ignoremsg`
* `addcond`
* `removecond`
* `jointeam`
* `jointeam_nomenus`
* `closedwelcomemenu`
* `joinclass`
* `resetclass`
* `mp_playgesture`
* `mp_playanimation`
* `menuopen`
* `menuclosed`
* `pda_click`
* `weapon_taunt`
* `stop_taunt`
* `-taunt`
* `td_buyback`
* `build`
* `destroy`
* `eureka_teleport`
* `arena_changeclass`
* `extendfreeze`
* `show_motd`
* `show_htmlpage`
* `closed_htmlpage`
* `condump_on`
* `condump_off`
* `spec_next`
* `spec_prev`
* `spec_mode`
* `showroundinfo`
* `autoteam`
* `coach_command`
* `boo`
* `loot_response`
* `done_viewing_loot`
* `spectate`
* `team_ui_setup`
* `next_map_vote`
* `room_type`
* `dsp_player`
