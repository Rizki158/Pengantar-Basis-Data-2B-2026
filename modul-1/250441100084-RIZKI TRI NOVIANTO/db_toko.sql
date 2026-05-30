
CODE TRUNCATE
CREATE DATABASE db_toko;
USE db_toko;

CREATE TABLE transaksi_harian (
no_transaksi BIGINT PRIMARY KEY,
nama_barang VARCHAR (120),
jumlah_barang INT
);

INSERT INTO transaksi_harian (no_transaksi,nama_barang,jumlah_barang)
VALUE (01,'buku',5)

SELECT * FROM transaksi_harian;

TRUNCATE TABLE transaksi_harian;

CODE DROP

USE db_toko;

CREATE TABLE transaksi_harian (
no_transaksi BIGINT PRIMARY KEY,
nama_barang VARCHAR (120),
jumlah_barang INT
);

INSERT INTO transaksi_harian (no_transaksi,nama_barang,jumlah_barang)
VALUE (01,'buku',5)

SELECT * FROM transaksi_harian;

DROP TABLE transaksi_harian;

USE db_toko;

CREATE TABLE pelanggan_setia(
nomor_identitas INT PRIMARY KEY
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR (20)

DESCRIBE pelanggan_setia;

