---
description: Как полностью сбросить TF2, включая удаление mastercomfig или других конфигов.
...

<div style="background: linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:0.5rem 1rem;display: flex;align-items: center" class="md-typeset">
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

# Очистка

!!! Опасно

    При этом будут сброшены ВСЕ настройки. Прежде чем делать это, создайте резервную копию биндов и других пользовательских параметров настройки.

!!! Информация

    Эти шаги больше не требуются для установки mastercomfig, но сохраняются здесь для документирования того, как полностью сбросить TF2.

Если вы хотите удалить свой конфиг, удалите любые
конфигурационные элементы, которые находятся в вашей папке
После чего [проверьте свои игровые файлы](https://help.steampowered.com/ru/faqs/view/0C48-FCBD-DA71-93EB)
используя Steam.

Далее, если включена синхронизация Steam Cloud, сделайте все файлы находящиеся в
`STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` пустыми. Не удаляйте их
иначе Steam Cloud повторно загрузит их. Кроме того, можно
[отключить Steam Cloud](https://help.steampowered.com/ru/faqs/view/68D2-35AB-09A9-7678#enabling).

В завершении, запустите TF2 только с этими
`-novid -autoconfig -default +host_writeconfig config.cfg full +mat_savechanges +quit` параметрами
запуска. Игра запустится и выключится. После этого удалите эти параметры запуска.
