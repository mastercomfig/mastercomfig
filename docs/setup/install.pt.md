---
description: Passo a passo para instalar a mastercomfig e configurar ela corretamente.
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

# Como instalar a mastercomfig

1. [Baixe](https://mastercomfig.com/app) os arquivos VPK da mastercomfig de sua escolha.
2. Vá para a sua biblioteca Steam e clique em Team Fortress 2 com o botão direito.
3. Clique em Propriedades.
4. Clique na aba Arquivos Locais.
5. Clique em Navegar.
6. Navegue até a pasta `tf/custom`.
7. Arraste os arquivos VPK para dentro desta pasta.
8. Utilize essas opções de arranque: `-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime`. Para mais informações, leia o  [guia de customização de opções de arranque](../customization/launch_options.md).

## Configurações customizadas

Se você tem qualquer um dos seguintes arquivos na sua pasta `tf\cfg`, você precisará concluir passos adicionais para faze-los funcionar com a mastercomfig:

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

1. Crie uma pasta chamada `overrides` onde esses arquivos estão localizados (provavelmente `tf/cfg`).
2. Arraste esses arquivos para dentro da pasta `overrides` que acabou de ser criada

!!! tip

    Embora não seja requerido, se você mover outros arquivos (exemplo: `binds.cfg`), você terá que atualizar o comando `exec` de `exec binds.cfg` para `exec overrides/binds.cfg`.

## Passos Extras

### Concertos Rápidos

Está tendo algum problema? Veja o [Guia de Concertos Rápidos](../next_steps/quick_fixes.md) para auxilio.

### Customização

Quer personalizar o TF2 ainda mais?

* Veja como você pode [customizar opções individuais](../customization/custom_configs.md)
* Quer customizar um monte de opções facilmente? [Dê uma olhada no sistema de módulos](../customization/modules.md)
* Ajuste suas [opções de arranque](../customization/launch_options.md) para alcançar uma melhor performace e qualidade no seu sistema
* Se inspire pelas [configurações customizadas](../customization/custom_config_list.md) de outras pessoas.
* Dê uma olhada em algumas outras [ótimas modificações para o TF2](../customization/see_also.md)
* [Otimize o seu SO](../os/index.md) Para espremer ainda mais performace
