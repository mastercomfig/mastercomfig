---
description: mastercomfig'in nasıl düzgünce kurulacağına dair adımlar.
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
# mastercomfig nasıl kurulur

1. Seçtiğiniz mastercomfig VPK dosyalarını [indirin](https://mastercomfig.com/app).
2. Steam kütüphanenize gidin ve Team Fortress'a sağ tıklayın.
3. Özelliklere tıklayın.
4. Yerel Dosyalar sekmesine tıklayın.
5. Göz At yazısına tıklayın.
6. `tf/custom` klasörüne girin.
7. VPK dosyalarını bu klasöre sürükleyin.
8. Bu başlatma seçeneklerini ayarlayın: `-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime`. Daha fazla bilgi için [başlatma seçenekleri özelleştirme rehberini](../customization/launch_options.md) okuyun.

## Özel configler

Aşağıdaki dosyalardan herhangi birine sahipseniz, mastercomfig kuruluyken çalışmalarını sağlamak için birkaç ek adımı izlemeniz gerekmektedir:

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

1. Bu dosyaların bulunduğu yere (yüksek ihtimalle `tf/cfg`), `overrides` isimli bir klasör açın.
2. Bu dosyaları yeni oluşturulan `overrides` klasörüne taşıyın.

!!! İpucu
   Gerekli olmamakla birlikte, başka dosyaları (örneğin `binds.cfg`) taşırsanız, `exec` komutunu `exec binds.cfg`'den `exec overrides/binds.cfg`'ye güncellemeniz gerekecektir.

## Sonraki Adımlar

### Hızlı Çözümler

Herhangi bir sorunla mı karşılaşıyorsunuz? Yardım için [Hızlı Çözümler rehberine](../next_steps/quick_fixes.md) göz atın.

### Özelleştirme

TF2'yi daha da kişiselleştirmek ister misiniz?

* Nasıl [bireysel ayarları özelleştirebileceğinizi](../customization/custom_configs.md) görün
* Bir dizi ayarı bir anda kolayca özelleştirmek ister misiniz? [Modül sistemine göz atın](../customization/modules.md)
* Sisteminizden daha iyi performans ve kalite elde etmek için [başlatma seçeneklerini](../customization/launch_options.md) düzenleyin
* Diğer insanların [özel configlerinden](../customization/custom_config_list.md) ilham alın
* Diğer [mükemmel TF2 modifikasyonlarına](../customization/see_also.md) bir göz atın
* Daha da fazla performans elde etmek için [işletim sisteminizi optimize edin](../os/index.md)
