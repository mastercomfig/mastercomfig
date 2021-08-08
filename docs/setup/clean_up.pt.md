---
description: Como resetar seu TF2 completamente, incluindo a mastercomfig e outras configurações.
...

# Limpeza Completa

!!! danger

    Isso irá resetar TODAS as suas opções. Tenha certeza de ter feito uma cópia de segurança de suas binds e outras configurações customizadas antes de prosseguir.

!!! info

    Esse passo a passo não é mais requerido para instalar a mastercomfig, mas foi mantidos aqui para documentar como resetar o TF2 completamente.

Se você quer remover suas configurações, delete todas as configurações que você tem em `tf/custom` e delete a pasta `tf/cfg`.
Então, [Verifique seus arquivos de jogo](https://support.steampowered.com/kb_article.php?ref=2037-QEUH-3335)
usando a Steam.

Em seguida, Se você está com a Sincronização na Nuvem ativada na Steam, faça todos os arquivos em
`PASTA_DA_STEAM/userdata/ID_DO_USUÁRIO/440/remote/cfg` ficarem em branco. Não delete eles, ou então a Nuvem da Steam vai restaura-los. Alternativamente, você pode [disabilitar a Sincronização em Nuvem da Steam](https://support.steampowered.com/kb_article.php?ref=6736-QEIG-8941#enabling).

Por ultimo, inicie o TF2 somente com as opções de arranque
`-novid -autoconfig -default +host_writeconfig config.cfg full +mat_savechanges +quit` definidas. O jogo vai abrir e fechar. Após isso, remova essas opções de arranque.
