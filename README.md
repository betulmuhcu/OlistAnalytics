# Olist E-Ticaret Veri Analizi 

Bu proje, Brezilya merkezli e-ticaret platformu **Olist**'e ait yaklaşık 100.000 sipariş verisini inceleyerek satış performansı, kategori analizi ve satıcı verimliliği üzerine kurgulanmış gelişmiş SQL sorgularını içerir.


## SQL Analiz Sorguları

### 1. Aylık Satış ve Sepet Performansı 
Platformun kronolojik büyümesini ve gelir akışlarını inceler.
- **Hesaplanan Metrikler:**
  - Aylık Toplam Sipariş Sayısı
  - Ürün Geliri (*Product Revenue*)
  - Kargo Geliri (*Freight Revenue*)
  - Ortalama Sepet Tutarı (*Average Order Value - AOV*)

### 2. Kategori Bazlı Gelir Analizi 
Portekizce ürün kategorilerini İngilizce karşılıklarıyla eşleştirerek kategorilerin gelir ve hacim performansını sıralar.
- **Hesaplanan Metrikler:**
  - Satılan Ürün Adedi ve Tekil Sipariş Sayısı
  - Toplam Gelir
  - Gelire Göre Kategori Sıralaması (`RevenueRank`)

### 3. Satıcı Performansı ve Lokasyon Dağılımı
Satıcıların platformdaki ciro katkılarını ve bulundukları şehir bazındaki hacimlerini analiz eder.
- **Hesaplanan Metrikler:**
  - Satıcı Bazlı Ürün ve Sipariş Hacmi
  - Satıcı Geliri ve Performans Sıralaması (`RevenueRank`)
  - Satıcı Şehir Bilgisi (*Seller City*)

## Yol Haritası (Roadmap)
- [x] SQL ile veri temizleme, birleştirme ve metrik hesaplama sorgularının hazırlanması
- [ ] Veri modelinin Power BI ortamına aktarılması
- [ ] Satış, Kategori ve Satıcı performansını içeren etkileşimli Power BI Dashboard tasarımı
