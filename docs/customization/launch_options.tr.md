---
description: Team Fortress 2'yi ve mastercomfig'i başlatma seçenekleriyle hassas biçimde ayarlayın.
...

# Başlatma Seçenekleri

Steam kütüphanenizde Team Fortress 2'ye sağ tıklayın ve **Özellikler...** kısmını açın. Açılan pencerede, **Başlatma Seçenekleri** yazısının altında bulunan
her şeyi silin ve

```c
-novid -nojoy -nosteamcontroller -nohltv -particles 1
```

seçeneklerini kutuya yapıştırın.

İsteğe bağlı başlatma seçenekleri ve size uygun DXLevel komutunu seçmek için aşağıyı okuyun.

## DXLevel Başlatma Seçenekleri

=== "Windows"

    !!! info
        Bu başlatma seçeneklerini ilk başlattığınızda ekleyin ve ardından **kaldırın**. "-dxlevel" başlatma seçeneklerini kaldırmamak, grafik ayarlarının düzgün uygulanmaması, yavaş yüklemeler, donmalar, TF2'nin donanımınızı düzgün kullanamaması ve bunun gibi birçok soruna neden olur.
        
     * **-dxlevel 90** : DirectX 9, Pixel Shader 2.0b. Yarı modern görselleştirme yöntemlerini kullanırken daha düşük grafik kalitesi sunar.
     * **-dxlevel 100** : DirectX 9+, Pixel Shader 3.0. En yüksek grafik kalitesi. Grafik özelliklerini belirlemek için donanımı kullanır. (önerilen)

=== "macOS"

    DXLevel oyun tarafından otomatik olarak belirlenir ve değiştirilemez.

=== "Linux"

    DXLevel oyun tarafından otomatik olarak belirlenir ve değiştirilemez.

## Önerilen Başlatma Seçenekleri

`-novid -nojoy -nosteamcontroller -nohltv -particles 1`

- **-novid** : Valve başlangıç logosunu devre dışı bırakır, zaman kazandırır.
- **-nojoy** : Joystick sisteminin başlatılmasını durdurur; daha hızlı başlangıç ve daha az bellek kullanımı.
- **-nosteamcontroller** : Steam kontrolcüsünü devre dışı bırakır; daha hızlı başlangıç, daha az bellek kullanımı ve daha az girdi çakışması.
- **-nohltv** : SourceTV barındırmayı devre dışı bırakır; daha az kaynak kullanımı.
- **-particles 1** : Işın sayısını minimum 512 ile sınırlar.

## Ek Başlatma Seçenekleri

=== "Windows"

    * **-console** : Başlangıçta konsolu gösterir.
    * **-nostartupsound** : Ana menüde oyun müziğini kapatır.
    * **-no_texture_stream** : Doku akışını devre dışı bırakır. Hızlı doku erişimi olan ve görüntü belleğinin baskısında olmayan güçlü bir sisteminiz varsa kullanışlıdır.
    * **-autoconfig** : Grafik kalitesini donanımınız için önerilene sıfırlar. None Ön Ayarı ile kullanışlı olarak çalışır. İlk başlatmadan sonra kaldırın.
    * **-audiolanguage english** : Oyun seslendirmesini İngilizce yapar. Bu seçenek, farklı bir oyun dili kullandığınız ancak İngilizce seslendirme istediğiniz zaman işe yarayabilir.
    * **-freq x** : Yenileme hızını, TF2 otomatik olarak algılamadığında belirlenen değer için zorlar. Örneğin, 144hz bir monitörünüz varsa `-freq 144` için x 144 olmalıdır.

=== "macOS"

    * **-console** : Başlangıçta konsolu gösterir.
    * **-nostartupsound** : Ana menüde oyun müziğini kapatır.
    * **-no_texture_stream** : Doku akışını devre dışı bırakır. Hızlı doku erişimi olan ve görüntü belleği baskısında olmayan güçlü bir sisteminiz varsa kullanışlıdır.
    * **-autoconfig** : Grafik kalitesini donanımınız için önerilene sıfırlar. None Ön Ayarı ile kullanışlı olarak çalışır. İlk başlatmadan sonra kaldırın.
    * **-audiolanguage english** : Oyun seslendirmesini İngilizce yapar. Bu seçenek, farklı bir oyun dili kullandığınız ancak İngilizce seslendirme istediğiniz zaman işe yarayabilir.
    * **-displayindex x** : Monitörü belirlenen ekran dizininde kullanır. `1` ile başlar. `0` ana (ve varsayılan) ekrandır.
    * **-snd_openal** : Mac Audio Queue yerine gecikmeyi azaltabilen ve gelişmiş ses efektleri sağlayan OpenAL arabirimini kullanır. :warning: Valve tarafından desteklenmediği için **deneyseldir**.
    * **-glslcontrolflow** : GLSL kontrol akışı için destek sağlar. Bu, 4 dünya aydınlatması kullanımına olanak verir. :warning: Görselleştirme sorunlarına neden olabileceği için **deneyseldir**.
    * **-glmenableclipplanes** : Performansı düşüren AMD sürücü onarımını devre dışı bırakmak için kullanılır. :warning: Çökmelere neden olabileceği için **deneyseldir**.

=== "Linux"

    * **-console** : Başlangıçta konsolu gösterir.
    * **-nostartupsound** : Ana menüde oyun müziğini kapatır.
    * **-no_texture_stream** : Doku akışını devre dışı bırakır. Hızlı doku erişimi olan ve görüntü belleği baskısında olmayan güçlü bir sisteminiz varsa kullanışlıdır.
    * **-autoconfig** : Grafik kalitesini donanımınız için önerilene sıfırlar. None Ön Ayarı ile kullanışlı olarak çalışır. İlk başlatmadan sonra kaldırın.
     * **-audiolanguage english** : Oyun seslendirmesini İngilizce yapar. Bu seçenek, farklı bir oyun dili kullandığınız ancak İngilizce seslendirme istediğiniz zaman işe yarayabilir.
    * **-displayindex x** : Monitörü belirlenen ekran dizininde kullanır. `1` ile başlar. `0` ana (ve varsayılan) ekrandır.

## Az Kullanılan Başlatma Seçenekleri

Kullanıcıların büyük çoğunluğunun bu başlatma seçeneklerini kullanması gerekmemektedir ama ihtiyacı olan kişiler için burada bulunmaktadırlar.

- **-nouserclip** : Donanım kullanıcı kırpma düzlemleri yerine yazılım kırpma kullanır; FPS artışı ya da azalması CPU+GPU'nuza ve grafik API'nize bağlıdır.
- **-nosound** : Sesi devre dışı bırakır.
- **-small** : Çözünürlüğün 640x480'den küçük olmasına olanak tanır.

### Düşük çözünürlükler

Aşağıdaki seçenekleri, `-small` komutuyla birlikte ya da Video Çözünürlük Seçeneklerinde bulunmayan özel çözünürlükleri ayarlamak için kullanabilirsiniz: 

- **-w** : Oyunun genişliğini ayarlar
- **-h** : Oyunun yüksekliğini ayarlar

Genellikle bu başlatma seçenekleri yerine oyundaki seçenekleri kullanmanız önerilir, ama daha yüksek performans için gereken bazı düşük çözünürlükler oyunda bulunmaz. Bu başlatma seçenekleri son derece eski tümleşik grafik kartlarına sahip düşük kaliteli bilgisayarlar için gereklidir. Bazı faydalı değerler şunlardır:

- `-w 1024 -h 576` : Mevcut çözünürlük seçeneklerinin dışında bir sonraki en düşük 16:9 çözünürlük
- `-w 896 -h 504` : Tüm HUD öğelerini koruyan, mümkün olan en düşük 16:9 çözünürlük
- `-small -w 768 -h 432` : Düşük çözünürlük, sohbet mesajlarını gizler
- `-small -w 640 -h 360` : Düşük çözünürlük, sohbet mesajlarını gizler

Sohbeti daha düşük çözünürlüklerde gizli olsa bile kullanmaya devam edebilirsiniz, bu nedenle en iyi şekilde çalışması için `messages=off` modülünü kullanmak isteyebilirsiniz.

### DirectX 8

DirectX 8 seviyesindeki grafikler de bir başlatma seçeneği ayarlanarak kullanılabilir. Ancak DirectX 8, yirmi yılı aşkın bir süre önce piyasaya sürülen çok eski
bir grafik sistemidir.
Modern GPU kaynaklarını düzgün kullanamıyor, Masaüstü Pencere Yöneticisi'nde düzgün çalışmıyor ve Windows'un modern sürümlerinde verimsiz bir sarmalayıcı
kullanılarak uygulanıyor.
DirectX 8 kullanırsanız artan giriş gecikmesi, düşük FPS, çökmeler, işleme hataları ve daha fazlasını yaşayabilirsiniz.
DirectX 8 ayrıca su, çeşitli oynanış görsel göstergeleri ve skinler de dahil oyunun birçok özelliğini düzgün bir şekilde desteklemez.

Bu nedenler ve daha fazlasından dolayı, yukarıda listelenen DirectX sürümlerini kullanmanız önerilir. Ancak merak edenler için mastercomfig hala mevcut DirectX 8
yapılandırmanızla uyumludur. DirectX seviyenizi kaldırmaz veya değiştirmez.
Dolayısıyla, DirectX 8 başlatma seçeneği kullanıyorsanız, yukarıdakileri aklınızda tutarak kullanmaya devam edebilirsiniz.

!!! warning
    DirectX 8'in 64-bit güncellemesinden sonra çalışmadığı veya çökmelere neden olduğuna dair raporlar da var.
