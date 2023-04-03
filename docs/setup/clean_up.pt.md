---
description: Como resetar seu TF2 completamente, incluindo a mastercomfig e outras configurações.
...

<div style="background:linear-gradient(135deg, rgba(33,37,41, 0.01), rgba(33,37,41, 1) 60%),radial-gradient(ellipse at top left, rgba(255,255,255, 0.5), transparent 50%),radial-gradient(ellipse at top right, rgba(255,228,132, 0.5), transparent 50%),radial-gradient(ellipse at center right, rgba(112.520718,44.062154,249.437846, 0.5), transparent 50%),radial-gradient(ellipse at center left, rgba(13,110,253, 0.5), transparent 50%);padding:0.5rem;display:flex;align-items:center" class="md-typeset">
    <div style="font-size: 0;">
        <a href="https://tradeit.gg/?aff=comfig">
            <img style="height:4rem;width:4rem;aspect-ratio:1/1;" alt="tradeit.gg logo" src="https://mastercomfig.com/img/third_party/tradeit.webp" width="96" height="96" />
        </a>
    </div>
    <div style="margin-left: 0.5rem;">
        <a href="https://tradeit.gg/?aff=comfig">
            <p style="color:#fff;margin:0">
                <strong>Trade, buy or sell items</strong><br>
                Trade items instantly for real money with the lowest fees.<br>
                Fully automated. Over 45 million successful trades.
            </p>
        </a>
    </div>
</div>
# Limpeza Completa

!!! danger

    Isso irá resetar TODAS as suas opções. Tenha certeza de ter feito uma cópia de segurança de suas binds e outras configurações customizadas antes de prosseguir.

!!! info

    Esse passo a passo não é mais requerido para instalar a mastercomfig, mas foi mantidos aqui para documentar como resetar o TF2 completamente.

Se você quer remover suas configurações, delete todas as configurações que você tem em `tf/custom` e delete a pasta `tf/cfg`.
Então, [verifique seus arquivos de jogo](https://help.steampowered.com/pt/faqs/view/0C48-FCBD-DA71-93EB)
usando a Steam.

Em seguida, se você está com a Sincronização em Nuvem ativada na Steam, faça todos os arquivos em
`PASTA_DA_STEAM/userdata/ID_DO_USUÁRIO/440/remote/cfg` ficarem em branco. Não delete eles, ou então a Nuvem da Steam vai restaura-los. Alternativamente, você pode [disabilitar a Sincronização em Nuvem da Steam](https://help.steampowered.com/pt/faqs/view/68D2-35AB-09A9-7678#enabling).

Por último, inicie o TF2 somente com as opções de arranque
`-novid -autoconfig -default +host_writeconfig config.cfg full +mat_savechanges +quit` definidas. O jogo vai abrir depois fechar. Após isso, remova essas opções de arranque.
