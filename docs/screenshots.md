---
description: mastercomfig screenshots for all presets.
...

# Screenshots

## Ultra

![sawmill ultra](https://comfig.app/img/presets/ultra-hq.webp){ loading=lazy }

## High

![sawmill high](https://comfig.app/img/presets/high-hq.webp){ loading=lazy }

## Medium High

![sawmill medium high](https://comfig.app/img/presets/medium-high-hq.webp){ loading=lazy }

## Medium

![sawmill medium](https://comfig.app/img/presets/medium-hq.webp){ loading=lazy }

## Medium Low

![sawmill medium low](https://comfig.app/img/presets/medium-low-hq.webp){ loading=lazy }

## Low

![sawmill low](https://comfig.app/img/presets/low-hq.webp){ loading=lazy }

## Very Low

![sawmill very low](https://comfig.app/img/presets/very-low-hq.webp){ loading=lazy }

## Preset Screenshot Config

```c
// Designed to take screenshots on the map koth_sawmill

// setpos -604 -1023 -64;setang -1 -43 0     Bot1 will be on these coordinates, spectate this bot, RED TEAM
// setpos -246 -1855 -52;setang -0 41 0      Bot2 will be on these coordinates, RED TEAM
// setpos -89 -1160 -33;setang 14 167 0     Bot3 will be on these coordinates, kill this bot, RED TEAM
// setpos 48 -1582 -58;setang 9 138 0      Bot4 will be on these coordinates, explode this bot, RED TEAM
// setpos 241 -1246 -31;setang 6 -94 0      Bot5 will be on these coordinates, BLUE TEAM

bot_dontmove 1
mp_teams_unbalance_limit 0
fov_desired 0
mp_waitingforplayers_cancel 1
cl_drawhud 0

bot -team red -class Engineer -name bot1
bot -team red -class Soldier -name bot2
bot -team red -class Medic -name bot3
bot -team red -class Heavy -name bot4
bot -team blue -class Pyro -name bot5

wait 200; bot_teleport bot1 -604 -1023 -64 -1 -43 0
wait 200; bot_teleport bot2 -246 -1855 -52 -0 41 0
wait 200; bot_teleport bot3 -89 -1160 -33 14 167 0
wait 200; bot_teleport bot4 48 -1582 -58 9 138 0
wait 200; bot_teleport bot5 241 -1246 -31 6 -94 0

wait 200; spec_player bot1
wait 1000; kill bot3; explode bot4
```

## Explosions Screenshot Config

```c
// Designed to take screenshots on the map itemtest
sv_cheats 1
bot;wait 9000;host_timescale 0.02;cl_drawhud 0;r_drawviewmodel 0;bot_changeclass bot01 pyro;bot_teleport bot01 990 -426 -174 90 180 0;wait 10000;r_cleardecals;setang 6 0 0;setpos 623 -405 -240
```
