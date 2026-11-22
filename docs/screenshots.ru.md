---
description: mastercomfig скриншоты для всех пресетов.
...

# Скриншоты

## Ультра

![sawmill ультра](img/presets/ultra-hq.webp){ loading=lazy }

## Высокие

![sawmill высокие](img/presets/high-hq.webp){ loading=lazy }

## Средние

![sawmill средние](img/presets/medium-hq.webp){ loading=lazy }

## Низкие

![sawmill низкие](img/presets/low-hq.webp){ loading=lazy }

## Минимальные

![sawmill минимальные](img/presets/destitute-hq.webp){ loading=lazy }

## Настройки для создания скриншотов пресета

```c
// Предназначен для создания скриншотов на карте koth_sawmill

// setpos -604 -1023 -64;setang -1 -43 0     Bot1 будет находиться по этим координатам, наблюдайте за этим ботом, КРАСНАЯ КОМАНДА
// setpos -246 -1855 -52;setang -0 41 0      Bot2 будет находиться по этим координатам, КРАСНАЯ КОМАНДА
// setpos -89 -1160 -33;setang 14 167 0     Bot3 будет находиться по этим координатам, уничтожьте этого бота, КРАСНАЯ КОМАНДА
// setpos 48 -1582 -58;setang 9 138 0      Bot4 будет находиться по этим координатам, взорвите этого бота, КРАСНАЯ КОМАНДА
// setpos 241 -1246 -31;setang 6 -94 0      Bot5 будет находиться по этим координатам, СИНЯЯ КОМАНДА

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

## Настройки для создания скриншотов взрывов

```c
// Предназначен для создания скриншотов на карте itemtest
sv_cheats 1
bot;wait 9000;host_timescale 0.02;cl_drawhud 0;r_drawviewmodel 0;bot_changeclass bot01 pyro;bot_teleport bot01 990 -426 -174 90 180 0;wait 10000;r_cleardecals;setang 6 0 0;setpos 623 -405 -240
```
