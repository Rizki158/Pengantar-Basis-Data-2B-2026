CREATE DATABASE klinik_sehat_bersama;
USE klinik_sehat_bersama;

CREATE TABLE dokter (
id_dokter INT PRIMARY KEY,
nama_dokter VARCHAR (100),
spesialisasi VARCHAR (100)
);

CREATE TABLE pasien (
id_pasien INT PRIMARY KEY,
nama_pasien VARCHAR (100),
tanggal_lahir DATE,
no_telepon CHAR (12)
);

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY ,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien)
REFERENCES pasien (id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES dokter (id_dokter)
ON DELETE RESTRICT
);

INSERT INTO dokter (id_dokter,nama_dokter,spesialisasi)
VALUES (1,'Rizki','jantung'),
(2,'kiki','gigi');

INSERT INTO pasien (id_pasien,nama_pasien,tanggal_lahir,no_telepon)
VALUES (1,'bambang','2010-10-10','081114764701'),
(2,'mulyono','2011-11-11','082114764701');

INSERT INTO rekam_medis (id_rekam,id_pasien,id_dokter,tanggal_periksa,diagnosis)
VALUES (101,1,1,'2025-11-25','serangan jantung'),
(102,2,2,'2025-11-20','gigi berlubang');

UPDATE pasien
SET no_telepon = '081114764701'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'gigi'
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_rekam = 101;

CREATE TABLE dokter (
id_dokter INT PRIMARY KEY,
nama_dokter VARCHAR (100),
spesialisasi VARCHAR (100)
);
CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY ,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien)
REFERENCES pasien (id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES dokter (id_dokter)
ON DELETE CASCADE
);

INSERT INTO dokter (id_dokter,nama_dokter,spesialisasi)
VALUES (1,'Rizki','jantung'),
(2,'kiki','gigi');

INSERT INTO rekam_medis (id_rekam,id_pasien,id_dokter,tanggal_periksa,diagnosis)
VALUES (101,1,1,'2025-11-25','serangan jantung '),
(102,2,1,'2025-11-20','gagal jantung');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

CREATE TABLE pasien (
id_pasien INT PRIMARY KEY,
nama_pasien VARCHAR (100),
tanggal_lahir DATE,
no_telepon CHAR (12)
);

REATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY ,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien)
REFERENCES rekam_medis (id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES rekam_medis (id_dokter)
ON DELETE RESTRICT
);

INSERT INTO rekam_medis (id_rekam,id_pasien,id_dokter,tanggal_periksa,diagnosis)
VALUES (101,1,1,'2025-11-25','serangan jantung '),
(102,2,2,'2025-11-20','gigi berlubang');

TRUNCATE TABLE pasien;
TRUNCATE TABLE rekam_medis;
SELECT * FROM rekam_medis;
