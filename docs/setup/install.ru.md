---
description: Пошаговая инструкция как настроить и установить mastercomfig
...

<div style="background: linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:0.5rem 1rem;display: flex;align-items: center;margin-bottom: 1rem" class="md-typeset">
    <div>
        <a href="https://tradeit.gg/?aff=comfig">
            <img style="height:8rem;width:8rem;aspect-ratio:1/1;display: inline-block;" alt="tradeit.gg logo" src="https://mastercomfig.com/img/third_party/tradeit.webp" width="128" height="128">
        </a>
    </div>
    <div style="margin-left: 0.5rem;">
        <a href="https://tradeit.gg/?aff=comfig">
            <p style="color:#fff">
                <strong>Trade, buy or sell items</strong><br>
                Trade items instantly for real money with the lowest fees.<br>
                Fully automated. Over 45 million successful trades.
            </p>
        </a>
    </div>
</div>

# Как установить mastercomfig

1. [Скачать](https://mastercomfig.com/app) VPK файлы на ваш выбор.
2. Перейдите в свою библиотеку Steam и щелкните правой кнопкой мыши по Team Fortress 2 в списке.
3. Выберите Свойства...
4. Нажмите Локальные файлы...
5. Нажмите Обзор...
6. Перейдите в папку `tf/custom`.
7. Перетащите файлы VPK в папку custom.
8. Установите эти параметры запуска: `-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime`. Для получения дополнительной информации прочтите руководство [параметры запуска](../customization/launch_options.ru.md).

## Кастомные конфиги

Если у вас есть какой-либо из следующих файлов, вам нужно будет выполнить некоторые дополнительные действия, чтобы заставить их работать с mastercomfig:

```txt
autoexec.cfg
listenserver.cfg
scout.cfg
soldier.cfg
pyro.cfg
demoman.cfg
heavyweapons.cfg
engineer.cfg
medic.cfg
sniper.cfg
spy.cfg
```

1. Создайте папку `overrides`, в которой находятся эти файлы (скорее всего `tf/cfg`).
2. Перетащите эти файлы в созданную папку `overrides`.

!!! Совет
    Хотя это и не обязательно, если вы перемещаете какие-либо другие файлы (например, `binds.cfg`), вам придется обновить команду `exec` с `exec binds.cfg` на `exec overrides/binds.cfg`.

## Следующие шаги

### Быстрые исправления

Возникли проблемы? Посмотрите руководство [Быстрые исправления](../next_steps/quick_fixes.ru.md).

### Кастомизация

Хотите еще больше персонализировать свой TF2?

* Посмотри, как ты можешь [настроить индивидуальные настройки](../customization/custom_configs.ru.md)
* Хотите легко настроить сразу несколько настроек? [Ознакомьтесь с модульной системой](../customization/modules.ru.md)
* Настройте свои [параметры запуска](../customization/launch_options.ru.md) для повышения производительности вашей игры
* Вдохновляйтесь чужими [кастомизироваными конфигами](../customization/custom_config_list.ru.md)
* Взгляните на другие [отличные модификации для TF2](../customization/see_also.ru.md)
* [Оптимизируйте свою ОС](../os/index.ru.md) чтобы выжать еще больше производительности
