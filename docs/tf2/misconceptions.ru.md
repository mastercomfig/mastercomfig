---
description: Распространенные заблуждения с TF2, которые исправляет mastercomfig.
...

# Заблуждения

## Плохие параметры запуска

* **-noipx** : не существует и никогда не существовал в Source
* **-heapsize** : не существует. Он никогда не работал в Source и был удален в [старом обновлении](https://store.steampowered.com/oldnews/4371)
* **-nocrashdialog** : не улучшает FPS + затрудняет отладку сбоев
* **+exec autoexec** : `autoexec.cfg` уже запущен при запуске, нет необходимости запускать его снова
* **+map_background** : Team Fortress 2 имеет более совершенную систему предварительной загрузки, поэтому фон карты не нужен. Если вы используете их, чтобы обойти sv_pure через предварительную загрузку, это нормально
* **-dxlevel 98** : поддерживается только на консоли Xbox 360. Будет возвращен к `-dxlevel 95` на ПК
* **-dxlevel 82** : это был старый DXLevel, используемый только некоторыми древними по нынешним стандартам картами NVIDIA. Больше ничего не делает
* **-limitvsconst** : ограничивает аппаратные константы вершинного шейдера до 256, возможно, ниже аппаратных возможностей, что экономит немного ресурсов. Но при наличии большего количества констант можно использовать более быстрые режимы затенения
* **-threads** : Движок Source aвтоматически определяет значение для этого параметра и ограничивает его значением 3 из-за проблем с производительностью при более высоких значениях. Valve также [рекомендует](https://www.reddit.com/r/GlobalOffensive/comments/5y8r7v/in_depth_discussion_of_the_threads_launch_option/dep5yno/) удаление этого параметра запуска
* **-high** : `high` является приоритетным режимом в Windows, который рекомендуется только для кратковременных потоков, критически важных по времени. Это может привести к разбалансировке использования ресурсов и снижению производительности. Закройте приложения на компьютере
* **-nod3d9ex** : это отключает расширения, которые улучшают управление ресурсами, ускоряют alt-tab и улучшают использование памяти. Давным-давно драйверы не очень хорошо поддерживали этот вариант, и люди рекомендовали отключить его, но сейчас все хорошо и нет причин использовать этот вариант запуска
* **-NOPROCESSHEAP** : это был обходной путь для ошибки, которая произходила только в течение короткого времени в CS:GO, и она снижает производительность. Нет абсолютно никаких причин использовать это больше

## Параметры запуска разрешения и окон

* **-fullscreen -w -h -full -sw -window -windowed -width -height**

Эти варианты запуска могут создавать неправильный режим видео, что не является предпочтительным для материальной системы и может снизить производительность. Попробуйте установить эти параметры в окне параметров настройки.

## Плохие CVars

* `mat_shadowstate` : Не существует.
* `mat_parallaxmap` : Не используется.
* `g_ragdoll_fadespeed 0;g_ragdoll_lvfadespeed 0` : Не используется. Если бы он работал, установка его в 0 сделала бы рагдолы никогда не угасающими.
* `mp_usehwmvcds` : Не используется.
* `cl_rumblescale 0` : `-nojoy` уже отключает это, и установка для него значения 0 не приносит никакой пользы.
* `r_threaded_client_shadow_manager` : Не используется.
* `r_threaded_renderables` : Не используется.
* `in_usekeyboardsampletime` : Не используется, если вы не используете keylook, и вы, вероятно, не захотели бы это отключать, если бы вы это сделали.
* `mat_wateroverlaysize` : Не используется, только команда отладки.
* `mat_framebuffercopyoverlaysize` : Не используется, только команда отладки.
* `r_decal_cullsize` : Не используется.
* `rate 60000` : Это ниже, чем значение по умолчанию для TF2 `80000`. Сетевые настройки TF2 по умолчанию уже находятся на низком уровне. Зачем вам устанавливать более низкую скорость, особенно когда вы увеличиваете скорость передачи пакетов? (`cl_updaterate 66`, `cl_cmdrate 66`)?
* `cl_interp 0.033` : Это опечатка, сделанная где-то в процессе. Правильный интерп `cl_interp_ratio 2;cl_interp 0.0303`. Это равно 2 / 66.
* `cl_interp 0.0152` : Это означает, что вы будете подвергнуты неточной экстраполяции, которая не соответствует истории сервера, все для получения более низкой визуальной задержки на позициях объекта в течение нескольких миллисекунд, что не имеет значения, когда позиции не могут существенно отличаться в течение этого времени. Вместо этого вы хотите убедиться, что ваши позиции объекта, по крайней мере, соответствуют истории сервера, так как это существенно более важно для компенсации отставания и вашего собственного восприятия при прогнозировании позиции на основе скорости/траектории.
* `mat_max_worldmesh_vertices 512` : Минимальное значение 1024, а не 512. Это также увеличивает количество сетей, используемых в мире, уменьшая при этом сложность сетки. Этот компромисс стоит только для очень, очень плохих графических процессоров, таких как интегрированные графические карты с отсутствием или плохой поддержкой аппаратного ускоренного преобразования и вершинного шейдера.
* `mat_forcehardwaresync 0` : Это приводит к тому, что механизм создает кадры, не синхронизированные с обработкой видеокарты, увеличивая отставание на входе.
* `mem_max_heapsize 2048` : Нет необходимости настраивать ограничение чтобы масса была дико большой, и система памяти инициализируется до того, как эта переменная может быть применена в любом случае. Если это действительно сработало, Source уже определяет наилучшее значение из размера памяти и ограничивает его с помощью этой консольной переменной. Установка высокого уровня [отнимает память](https://github.com/ValveSoftware/Source-1-Games/issues/1543#issuecomment-520534294) от других вещей, а также увеличивает время паузы для управления памятью.
* `datacachesize 512` : Нет необходимости настраивать это значение, чтобы оно было слишком большим, Source может выбрать лучшее значение, и если вы увеличите его без причины, вы уменьшите количество массы, доступной для других вещей, кроме кеша данных.
* `sv_forcepreload`/`cl_forcepreload` : [cl_forcepreload был удален](https://www.teamfortress.com/post.php?id=19733) - "Исправлены две наиболее распространенные формы заикания/зацепления кадров при использовании популярных конфигурационных элементов FPS". Он также назывался [cl_massive_hitches_at_surprising_times 1](https://www.reddit.com/r/GlobalOffensive/comments/adq2a4/never_install_csgo_on_an_old_hard_drive/edlbh3d/) написано сотрудником Valve.
* `rope_averagelight 0` : Установка значения 0 проходит через кубические карты чтобы канаты использовали максимальную интенсивность, а не уже доступную среднюю интенсивность, что снижает производительность.
* `r_PhysPropStaticLighting 0` : Это отключает кэширование статического освещения на реквизитах.
* `r_lod 2` : Это приводит все к LOD 2, когда самым низким качеством является LOD 7. Установите для этого значение `r_lod -1` и пусть `r_rootlod` обрабатывает базовое качество, в то же время позволяя использовать более низкие качества на расстоянии.
