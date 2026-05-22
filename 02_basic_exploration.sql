/* =========================================================================
   PROJECT: OJEK ONLINE BUSINESS PERFORMANCE ANALYSIS
   FILE   : 02_basic_exploration.sql
   TUJUAN : Eksplorasi data dasar dan filter kondisi operasional harian
========================================================================= */

-- 1. Mengidentifikasi orderan yang belum melunasi pembayaran
-- Menampilkan data transaksi yang membutuhkan perhatian tim operasional/penagihan
SELECT * FROM transaksi_ojol
WHERE status_pembayaran = 'Belum Bayar';

-- 2. Memfilter orderan dengan risiko tinggi (Jarak jauh tapi belum dibayar)
-- Mencari transaksi dengan jarak tempuh di atas 5 KM yang statusnya belum lunas
SELECT * FROM transaksi_ojol 
WHERE jarak_km > 5
  AND status_pembayaran = 'Belum Bayar';

-- 3. Menghitung Total Pendapatan Riil (Omzet Bersih)
-- Akumulasi total uang yang masuk dari transaksi yang sudah lunas
SELECT SUM(harga) AS omzet_bersih
FROM transaksi_ojol
WHERE status_pembayaran = 'Lunas';

-- 4. Mengetahui Rata-Rata Jarak Tempuh Seluruh Armada Harian
-- Metrik dasar untuk mengukur seberapa jauh jangkauan operasional per orderan
SELECT AVG(jarak_km) AS rata_rata_jarak_tempuh
FROM transaksi_ojol;

-- 5. Mengetahui Total Volume Transaksi Harian
-- Menghitung jumlah seluruh pesanan yang masuk untuk melihat tingkat aktivitas aplikasi
SELECT COUNT(*) AS transaksi_harian
FROM transaksi_ojol;
