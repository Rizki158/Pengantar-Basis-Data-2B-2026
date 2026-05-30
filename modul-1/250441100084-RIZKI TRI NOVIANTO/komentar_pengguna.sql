CREATE DATABASE komentar_pengguna;
USE komentar_pengguna;

CREATE TABLE umpan_balik (
id_komentar INT PRIMARY KEY,
nama VARCHAR (50),
isi_komentar TEXT
);

DESCRIBE umpan_balik ;
