---
description: A list of all string commands in TF2.
search:
  exclude: true
...

# String commands

String commands, also known as strcmds or nonccmds, are strings forwarded over the network for processing, rather than being handled by the command system.

## Client string commands

This process occurs when a command is not found in the client, or when the `cmd` command is used to directly forward the command to the server. You can also run this for bots using `bot_command`.

!!! warning
    Documentation is a work in progress. No descriptions yet.

There are a few types of client string commands:

* Engine client commands: these are special commands already registered on the client and server as console commands, but are handled through string forwarding. These are all listed in the cvarlist.
* Dispatch client commands: these are console commands only registered on the server (flagged as `GAMEDLL`), but are accepted to be run by the client. These are listed on the cvarlist as well.
* Client commands: these are all other commands, which are parsed manually by handlers through their string command and arguments. These are not listed on the cvarlist.

## List of client string commands

* `killtarget`: destroys an entity target by name/classname or uses picker. Only works with `developer 1` and `sv_cheats 1` and when executed as the server host.
* `demorestart`: requests a full update packet from the server
* `fade`: fades the screen to a black tint
* `te`: spawns a test temp ent. Requires `sv_cheats 1`.
* `voicemenu`: plays a voice command by menu and item index
* `vban`: an internal command for sending a mask for telling the server what voice data from players to ignore due to muted status.
* `VModEnable`: tells the server to not send voice data (`0`) or to send voice data (`1`). Used to communicate the status of `voice_modenable`.
* `vehicleRole`: switches vehicle role index while in a vehicle.
* `Vote`: internal command for casting votes.
* `playerperf`
* `tournament_readystate`: set a team as ready.
* `tournament_teamname`: set the team name.
* `tournament_player_readystate`: set yourself as ready.
* `nextmap`: tells you the next map.
* `timeleft`: tells you the time left for the map.
* `ignoremsg`: says what chat messages to ignore. cycles between ignore none, ignore all and ignore team.
* `addcond`: adds player condition by ID.
* `removecond`: removes player condition by ID.
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
* `spec_goto`
* `spectate`: enters spectator mode
* `showroundinfo`
* `autoteam`
* `coach_command`
* `boo`
* `loot_response`: plays voice line for getting loot in MvM game end. args: `common`, `rare`, `ultra_rare`.
* `done_viewing_loot`: finishes viewing loot in MvM
* `team_ui_setup`
* `next_map_vote`

## Server string commands

This process occurs when the server wants the client to run a command which is flagged by `server_can_execute`.

You can use the `clientcmd` command or a `point_clientcommand` entity to send these commands.