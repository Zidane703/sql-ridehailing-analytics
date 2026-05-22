# 🚀 Ojek Online (Ride-Hailing) Business Analytics with SQL

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data_Analysis-005571?style=for-the-badge&logo=google-analytics&logoColor=white)
![Business Intelligence](https://img.shields.io/badge/Business_Intelligence-FFB900?style=for-the-badge&logo=powerbi&logoColor=black)

## 📌 Executive Summary
Proyek ini adalah simulasi komprehensif analisis data transaksi pada aplikasi *ride-hailing* (ojek online). Menggunakan **PostgreSQL**, analisis ini difokuskan pada ekstraksi *raw data* menjadi *actionable insights* yang mendukung pengambilan keputusan operasional, evaluasi beban armada, dan pemetaan loyalitas pelanggan.

## 🎯 Business Problems Solved
Proyek ini dirancang untuk menjawab studi kasus operasional dan manajerial, meliputi:
- **Fleet Workload:** Mengidentifikasi layanan mana yang menyumbang jarak tempuh terpanjang.
- **Revenue & Cash Flow:** Membandingkan pendapatan riil (lunas) dengan piutang tertunda.
- **Service Performance:** Menemukan layanan dengan frekuensi transaksi tertinggi.
- **Customer Lifetime Value (CLV):** Mengidentifikasi pelanggan paling aktif dan pelanggan VIP ("Sultan") berdasarkan total pengeluaran.

---

## 📂 Repository Structure

Proyek ini dipecah menjadi tiga fase logis untuk memudahkan pembacaan dan pemeliharaan kode:

| File | Deskripsi | Fokus Utama |
| :--- | :--- | :--- |
| `01_setup_database.sql` | DDL & DML | Pembuatan skema tabel `transaksi_ojol` dan injeksi *mock data*. |
| `02_basic_exploration.sql` | Filter & Metrik Dasar | Perhitungan omzet bersih, rata-rata jarak, dan filter operasional. |
| `03_business_analysis.sql` | Agregasi & CTE | Analisis mendalam menggunakan *Common Table Expressions* (CTE), `GROUP BY`, dan `ORDER BY` untuk *ranking*. |

---

## 💡 Key Highlights & SQL Techniques Used
Dalam menganalisis data ini, saya menerapkan standar penulisan kode analitik profesional:
* **Common Table Expressions (CTE):** Digunakan untuk menyederhanakan *query* bersarang (*nested queries*) agar logika analisis lebih mudah dibaca.
* **Data Aggregation:** Penggunaan fungsi `SUM()`, `AVG()`, dan `COUNT()` untuk merangkum metrik bisnis.
* **Strategic Sorting:** Implementasi klausa `ORDER BY DESC` secara konsisten untuk menyajikan data yang paling krusial di urutan teratas (seperti pelanggan paling boros atau layanan paling laris).

---

## 👨‍💻 Author
**Lalu Zidane Alif Akbar**
*Data Enthusiast | SQL | Business Analytics*

📫 *Mari terhubung dan berdiskusi lebih lanjut mengenai Data dan Bisnis!*
