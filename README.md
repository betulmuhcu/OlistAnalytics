# Uçtan Uca E-Ticaret Veri Analitiği: Olist (SQL & Power BI)

## Proje Özeti
Bu proje, Brezilya merkezli e-ticaret platformu Olist'in gerçek dünya veri setini kullanarak bir iş zekası sürecini içermektedir. Karmaşık ham veriler **MS SQL Server** üzerinde gelişmiş sorgularla işlenmiş ve temizlenmiş, ardından **Power BI** kullanılarak etkileşimli bir dashboard yapılmıştır.

## SQL Veri Analizi Süreçleri
Verilerin rapora hazır hale getirilmesi için CTE, Window Functions ve çeşitli JOIN yapıları kullanılarak aşağıdaki analizler yapılmıştır:

* **Aylık Performans ve Sepet Analizi:** Teslim edilen siparişlerin aylık bazda ürün ve kargo gelirleri toplanmış, kronolojik performans ve sipariş başına ortalama sepet tutarları hesaplanmıştır.
* **Ürün Kategorisi Satış Analizi:** Eksik kategori verileri COALESCE ile standartlaştırılarak raporlama kalitesi artırılmıştır. Kategorilerin toplam gelir katkısı hesaplanmış ve RANK() OVER kullanılarak şirketin en çok kâr elde ettiği alanlar sıralanmıştır.
* **Satıcı Liderlik Tablosu:** Platformdaki satıcıların şehir bazlı dağılımları ve sipariş karşılama başarıları analiz edilerek gelire dayalı bir satıcı sıralaması oluşturulmuştur.

## 📈 Power BI İş Zekası Panosu
SQL üzerinden alınan anlamlı veriler, Power BI arayüzüne taşınmıştır:
* Tablolar arası ilişkiler kurulmuş ve "Çift Yönlü" çapraz filtreleme (Cross-Filtering) aktif edilerek tüm görsellerin birbiriyle anlık konuşması sağlanmıştır.
<img width="1312" height="718" alt="image" src="https://github.com/user-attachments/assets/d678d844-e3e6-45d8-9861-ec510d46315f" />


