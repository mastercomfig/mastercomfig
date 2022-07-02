---
Tanım: Mastercomfig ve diğer configler dahil olmak üzere TF2 nasıl tamamen sıfırlanır.
...

# Temizleme

!!! uyarı

    Aşağıdakileri uygulamak tüm ayarları sıfırlayacaktır. Bunu yapmadan önce tuş atamalarınızı ve diğer özel ayarlarınızı yedeklediğinizden emin olun.

!!! bilgi

    Mastercomfig'i kurmak için artık bu adımları uygulamanız gerekmiyor. Ancak TF2'nin nasıl sıfırlanacağını göstermek için burada tutulmaktadırlar.

Sahip olduğunuz configi kaldırmak istiyorsanız `tf/custom` klasöründe bulunan bütün config dosyalarını ve `tf/cfg` klasörünü silin.
Daha sonra Steam üzerinden
[oyun dosyalarının bütünlüğünü doğrulayın](https://help.steampowered.com/en/faqs/view/0C48-FCBD-DA71-93EB).

Ardından, eğer Steam Cloud Senkronizasyonu etkinse 
`STEAM_FOLDER/userdata/USER_ID/440/remote/cfg` klasöründeki dosyaların içerisindekileri temizleyin. Dosyaları silmeyin 
yoksa Steam Cloud bu dosyaları tekrar indirir. Alternatif olarak
[Steam Cloud'u devre dışı bırakabilirsiniz](https://help.steampowered.com/en/faqs/view/68D2-35AB-09A9-7678#enabling).

Son olarak TF'yi
`-novid -autoconfig -default +host_writeconfig config.cfg full +mat_savechanges +quit` başlatma seçenekleriyle çalıştırın. Oyun açılacak ve geri kapanacaktır. Sonrasında başlatma seçeneklerini kaldırın.
