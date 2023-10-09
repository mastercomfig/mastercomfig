---
description: Como resetar seu TF2 completamente, incluindo a mastercomfig e outras configurações.
...
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
