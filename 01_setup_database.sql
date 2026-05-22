/* =========================================================================
   PROJECT: ANALISIS TRANSAKSI OJEK ONLINE
   FILE   : 01_setup_database.sql
   AUTHOR : Lalu Zidane Alif Akbar
   TUJUAN : Mendefinisikan struktur tabel dan memasukkan data sampel
========================================================================= */

-- 1. Membuat Tabel Transaksi
CREATE TABLE transaksi_ojol (
    id_transaksi SERIAL PRIMARY KEY,
    nama_pelanggan VARCHAR(100),
    layanan VARCHAR(100),
    jarak_km NUMERIC(5,2),
    harga NUMERIC(15,2),
    status_pembayaran VARCHAR(50)
);

-- 2. Memasukkan Data Sampel
INSERT INTO transaksi_ojol (nama_pelanggan, layanan, jarak_km, harga, status_pembayaran) 
VALUES
    ('Budi', 'Ride', 4.5, 12000, 'Lunas'),
    ('Siti', 'Food', 2.1, 25000, 'Lunas'),
    ('Agus', 'Ride', 8.0, 22000, 'Belum Bayar'),
    ('Rini', 'Send', 5.5, 17000, 'Lunas'),
    ('Dewi', 'Food', 1.2, 15000, 'Lunas'),
    ('Eko', 'Ride', 12.3, 31000, 'Belum Bayar'),
    ('Mega', 'Send', 3.0, 11000, 'Lunas');

-- 3. Memastikan Data Masuk
SELECT * FROM transaksi_ojol;
