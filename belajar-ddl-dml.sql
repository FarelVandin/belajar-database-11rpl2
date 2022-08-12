CREATE DATABASE sekolah;

CREATE TABLE siswa(
    -> nis CHAR(10) PRIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tempat_lahir VARCHAR(50),
    -> tanggal_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT,
    -> jomblo BOOLEAN);

    SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+

SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+

USE sekolah;

desc siswa;

INSERT INTO siswa VALUES(
    -> "12100018",
    -> "ADNAN MAULANA",
    -> "L",
    -> "SUBANG",
    -> "2005-08-17",
    -> "CIGADUNG",
    -> "11-RPL-2",
    -> "81.32",
    -> "1");

INSERT INTO siswa VALUES("12100029", "AGUNG ARYANTO", "L", "SUBANG", "2005-01-25", "TANJUNG WANGI", "11-RPL-2", "77.77", "1");

INSERT INTO siswa VALUES("12100263", "FAREL VANDIN ARDIWINATA", "L", "SUBANG", "2006-02-26", "KASOMALANG", "11-RPL-2", "99.99", "0");

INSERT INTO siswa VALUES("12100060", "ANDI AHMAD YUSUP", "L", "SUBANG", "2005-01-17", "CURUG RENDENG", "11-RPL-2", "79.99", "1");

INSERT INTO siswa VALUES("12100707", "SATRIO AUGISTIAWAN", "L", "SUBANG", "2005-08-04", "CILOA", "11-RPL-2", "69.99", "1");

INSERT INTO siswa VALUES("12100694", "SALSABILA ZAHRA ANDINA", "P", "SUBANG", "2006-03-26", "CIGADUNG", "11-RPL-2", "99.99", "1");

UPDATE siswa SET tempat_lahir = "BANDUNG" WHERE nis = 12100018;

UPDATE siswa SET tanggal_lahir = "2005-05-05", kelas = "11-RPL-1" WHERE nis = 12100018;

DELETE FROM siswa WHERE nis = "1210018";

SELECT *FROM siswa;
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| nis      | nama                    | jk   | tempat_lahir | tanggal_lahir | alamat        | kelas    | nilai | jomblo |
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| 12100029 | AGUNG ARYANTO           | L    | SUBANG       | 2005-01-25    | TANJUNG WANGI | 11-RPL-2 | 77.77 |      1 |
| 12100060 | ANDI AHMAD YUSUP        | L    | SUBANG       | 2005-01-17    | CURUG RENDENG | 11-RPL-2 | 79.99 |      1 |
| 12100263 | FAREL VANDIN ARDIWINATA | L    | SUBANG       | 2006-02-26    | KASOMALANG    | 11-RPL-2 | 99.99 |      0 |
| 12100694 | SALSABILA ZAHRA ANDINA  | P    | SUBANG       | 2006-03-26    | CIGADUNG      | 11-RPL-2 | 99.99 |      1 |
| 12100707 | SATRIO AUGISTIAWAN      | L    | SUBANG       | 2005-08-04    | CILOA         | 11-RPL-2 | 69.99 |      1 |
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+