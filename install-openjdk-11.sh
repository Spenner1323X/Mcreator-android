#!/bin/bash

# Java 11 Kurulumu
echo ">> Java 11 kuruluyor..."
sudo apt update && sudo apt install -y openjdk-11-jdk

# Java kurulum yolunu belirle
JAVA_PATH="/usr/lib/jvm/java-11-openjdk-arm64"

# JAVA_HOME ve PATH ayarlarını .bashrc dosyasına ekle
if ! grep -q "JAVA_HOME=$JAVA_PATH" ~/.bashrc; then
    echo ">> JAVA_HOME ve PATH .bashrc dosyasına ekleniyor..."
    echo -e "\n# Java 11 ortam değişkenleri" >> ~/.bashrc
    echo "export JAVA_HOME=$JAVA_PATH" >> ~/.bashrc
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
else
    echo ">> JAVA_HOME zaten .bashrc içinde mevcut."
fi

# Değişiklikleri yükle
echo ">> Değişiklikler uygulanıyor..."
source ~/.bashrc

# Java sürüm kontrolü
echo ">> Java sürüm bilgisi:"
java -version

# JavaFX (OpenJFX) kurulumu
echo ">> JavaFX (OpenJFX) kuruluyor..."
sudo apt-get install openjfx libopenjfx-java libopenjfx-jni

echo ">> JavaFX kurulumu tamamlandı."
