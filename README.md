## 🔧 MCreator Kurulumu (Ubuntu/Debian)

Bu işlemleri **Ubuntu/Debian** sistemlerinde yapmanız önerilir. Mobil cihazlarda **VNC** ile kurulum için [Andronix](https://andronix.app) veya `proot-distro` kullanılabilir.

### ☕ Java Kurulumu

Öncelikle `openjdk-11` kurulmalı ve PATH değişkenine eklenmelidir. Bunu kolaylaştırmak için size sağlanan `install-openjdk-11.sh` betiğini kullanabilirsiniz:

```bash
chmod +x install-openjdk-11.sh
./install-openjdk-11.sh
```

### 📦 rt.jar Dosyasını Yükleme

Size verdiğimiz zipi ayıklayın, içindeki `rt.jar` dosyasını dizine kopyalayın:

```
/usr/lib/jvm/java-11-openjdk-arm64/lib
```

> Not: Klasör adı sistem mimarinize göre değişebilir (`arm64`, `amd64` vb.).

### 🛠️ MCreator Kurulumu

1. [MCreator 2021.1](https://mcreator.net/download) sürümünü `.tar.gz` olarak indirin.
2. Arşivi çıkartın.
3. İçindeki `mcreator.sh` dosyasını silin.
4. Size verilen yeni `mcreator.sh` dosyasını bu klasöre yerleştirin.
5. Terminalde bu dizine gidin ve çalıştırılabilir yapın:

```bash
chmod +x mcreator.sh
./mcreator.sh
```

### ⚙️ Ayarlar

1. Ev dizininizdeki `.mcreator` klasörüne gidin:

   * Eğer `root` kullanıcısıysanız: `/root/.mcreator`
   * Diğer kullanıcılar için: `/home/KULLANICI_ADI/.mcreator`
2. `preferences` dosyasını açın.
3. Şu satırı bulun ve değiştirin:

```ini
discordRichPresenceEnable=false
```

### ✅ Test Etme

Modunuzu oluşturduktan sonra `.jar` dosyasını build edip, **PojavLauncher** gibi uygulamalarla test edebilirsiniz.

