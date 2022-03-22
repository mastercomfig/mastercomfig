# Документация по ТФ2

## Готовые списки

Вы можете просматривать готовые списки переменных, списки параметров запуска и скрытые списки переменных.

* [Windows cvarlist](cvarlist_win.md)
* [Список параметров запуска Windows](launchopts_win.md)
* [Linux cvarlist](cvarlist_linux.md)
* [Список параметров запуска Linux](launchopts_linux.md)
* [Скрытый список переменных](hiddencvars.md)

## Создание собственного списка cvar

1. Удалите mastercomfig VPK и добавьте эти параметры запуска: `-novid -autoconfig -default -conclearlog -condebug +clear +cvarlist +quit`.
2. Запустите ТФ2.
3. Удалите параметры запуска, снова добавьте mastercomfig.
4. Скопируйте и вставьте cvarlist `tf/console.log`.

## Создание собственного скрытого списка cvar

Используйте [sm_cvarlist](https://forums.alliedmods.net/showthread.php?p=1298262) плагин SourceMod.

## Создание собственного списка параметров запуска

В Windows вы можете использовать [GetLaunchOptions.bat](https://pastebin.com/bhQrywES) скрипт.

В Linux вы можете использовать следующие команды: `find . -type f \( -name "*.so" -o -name "hl2_linux" \) -print0 | xargs -0 strings | grep "^\-[A-Za-z]" | awk 'NF==1' | sort -u > launch_options.txt`
