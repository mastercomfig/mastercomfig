---
description: mastercomfig'in ve diğer configlerin kaldırılması dahil olmak üzere TF2 nasıl tamamen sıfırlanır.
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
# Temizleme

!!! uyarı

    Bu işlem TÜM ayarları sıfırlayacaktır. İşlemi gerçekleştirmeden önce tuş atamalarınızı ve diğer özel ayarlarınızı yedeklediğinizden emin olun.

!!! bilgi

    Artık mastercomfig'i kurmak için bu adımları uygulamak gerekmiyor; fakat TF2'nin nasıl tamamen sıfırlanacağını göstermek için burada tutulmaktadır.

Eğer sahip olduğunuz config'i kaldırmak istiyorsanız, 
`tf/custom` klasöründeki config dosyalarını ve `tf/cfg` klasörünü silin.
Sonrasında Steam üzerinden 
[oyun dosyalarını doğrulayın](https://help.steampowered.com/en/faqs/view/0C48-FCBD-DA71-93EB).

Daha sonra, eğer Steam Cloud Senkronizasyonu aktifse `STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` uzantısındaki dosyaların içerisindekileri temizleyin. 
Dosyaları silmeyin, yoksa Steam Cloud tekrar indirecektir. Alternatif olarak
[Steam Cloud'u devre dışı](https://help.steampowered.com/en/faqs/view/68D2-35AB-09A9-7678#enabling) bırakabilirsiniz.

Son olarak, TF2'yi `-novid -autoconfig -default +host_writeconfig config.cfg full +mat_savechanges +quit`
başlatma seçenekleri ile başlatın. Oyun başlayacak ve kapanacaktır. Ardından bu başlatma seçeneklerini kaldırın.
