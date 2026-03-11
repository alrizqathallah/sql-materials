# Pengantar SQL

## Apa itu SQL?

SQL merupakan singkatan dari (*Structured Query Language*), adalah bahasa pemrograman yang digunakan untuk engelola data dalam *Relational Database Management System* atau *RDBMS*.

Data yang disimpan dalam RDBMS menggunakn tabel, mirip seperti spreadsheet yang terdiri dari baris dan kolom.

### Kategori Perintah SQL

- **DDL** (*Data Definition Language*), digunakan untuk membuat struktur Database
  <br>
  Contoh: `CREATE` atau `DROP`.

- **DML** (*Data Manipulation Language*), digunakan untuk memanipulasi data.
  <br>
  Contoh: `INSERT`, `UPDATE` dan `DELETE`.

- **DQL** (*Data Query Language*), digunakan untuk mengambil data.
  <br>
  Contoh: `SELECT` yang paling sering digunakan.

<br>

## Struktur Dasar Perintah SQL

Struktur dasar perintah SQL, hampir semua menggunakan bentuk yang sama yaitu **S-F-W**.

- `SELECT`, untuk menentukan kolom mana yang ingin dilihat.
- `FROM`, untuk menentukan tabel mana tempat data simpan.
- `WHERE`, opsional untuk melakukan filter data yang diambil.

<br>

## Contoh Penggunaan

Dicontohkan dengan tabel `karyawan`:

| id | nama    | departemen |    gaji   |
|----|---------| -----------|-----------|
| 1  | Bengs   |      IT    | 9.000.000 |
| 2  | Wayan   |      IT    | 8.000.000 |
| 3  | Ambon   |      HR    | 7.000.000 |
| 4  | Kacang  |  Marketing | 6.000.000 |

<br>

**Mengambil Semua Data**:

untuk melihat seluruh isi tabel.

```Sql
SELECT * FROM karyawan;
```
