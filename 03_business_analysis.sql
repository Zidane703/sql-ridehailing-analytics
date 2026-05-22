/* =========================================================================
   PROJECT    : OJEK ONLINE BUSINESS PERFORMANCE ANALYSIS
   AUTHOR     : Lalu Zidane Alif Akbar
   EVALUATION : Beban Armada, Performa Layanan, dan Analisis Pelanggan
========================================================================= */

-- -------------------------------------------------------------------------
-- METRIK 1: BEBAN KERJA & PERFORMA LAYANAN
-- Tujuan: Mengetahui layanan paling laris dan yang memakan jarak tempuh terjauh
-- -------------------------------------------------------------------------
WITH LayananMetrics AS (
    SELECT 
        layanan,
        COUNT(id_transaksi) AS jumlah_transaksi,
        SUM(jarak_km) AS total_jarak_tempuh,
        AVG(jarak_km) AS rata_rata_jarak
    FROM 
        transaksi_ojol
    GROUP BY 
        layanan
)
SELECT 
    layanan,
    jumlah_transaksi,
    total_jarak_tempuh,
    ROUND(rata_rata_jarak, 2) AS rata_rata_jarak_km
FROM 
    LayananMetrics
ORDER BY 
    jumlah_transaksi DESC; 
-- Penggunaan ORDER BY sangat esensial di sini. Stakeholder bisnis tidak punya 
-- waktu untuk mencari data; pengurutan DESC memastikan insight utama 
-- (layanan paling mendominasi) langsung muncul di baris paling atas.

-- -------------------------------------------------------------------------
-- METRIK 2: ANALISIS LOYALITAS & NILAI PELANGGAN (CUSTOMER LIFETIME VALUE)
-- Tujuan: Mengidentifikasi pelanggan paling aktif dan pelanggan "Sultan"
-- -------------------------------------------------------------------------
WITH CustomerValue AS (
    SELECT 
        nama_pelanggan,
        COUNT(id_transaksi) AS frekuensi_order,
        SUM(harga) AS total_pengeluaran
    FROM 
        transaksi_ojol
    GROUP BY 
        nama_pelanggan
)
SELECT 
    nama_pelanggan,
    frekuensi_order,
    total_pengeluaran
FROM 
    CustomerValue
ORDER BY 
    total_pengeluaran DESC;
-- Catatan: Mengurutkan dari pengeluaran terbesar untuk memprioritaskan 
-- pelanggan VIP dalam strategi promosi atau marketing ke depannya.

-- -------------------------------------------------------------------------
-- METRIK 3: KESEHATAN ARUS KAS (CASH FLOW HEALTH)
-- Tujuan: Membandingkan pendapatan yang sudah terealisasi vs yang masih tertunda
-- -------------------------------------------------------------------------
SELECT 
    status_pembayaran,
    COUNT(id_transaksi) AS jumlah_order,
    SUM(harga) AS total_nominal
FROM 
    transaksi_ojol
GROUP BY 
    status_pembayaran
ORDER BY 
    status_pembayaran ASC;
