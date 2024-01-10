---
description: mastercomfig'in ve diğer configlerin kaldırılması dahil olmak üzere TF2 nasıl tamamen sıfırlanır.
...
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
