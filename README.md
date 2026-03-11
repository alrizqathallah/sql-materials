# Pengantar SQL

## Apa itu SQL?

SQL merupakan singkatan dari (_Structured Query Language_), adalah bahasa pemrograman yang digunakan untuk engelola data dalam _Relational Database Management System_ atau _RDBMS_.

Data yang disimpan dalam RDBMS menggunakn tabel, mirip seperti spreadsheet yang terdiri dari baris dan kolom.

### Kategori Perintah SQL

- **DDL** (_Data Definition Language_), digunakan untuk membuat struktur Database
  <br>
  Contoh: `CREATE` atau `DROP`.

- **DML** (_Data Manipulation Language_), digunakan untuk memanipulasi data.
  <br>
  Contoh: `INSERT`, `UPDATE` dan `DELETE`.

- **DQL** (_Data Query Language_), digunakan untuk mengambil data.
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

| id  | nama   | departemen | gaji      |
| --- | ------ | ---------- | --------- |
| 1   | Bengs  | IT         | 9.000.000 |
| 2   | Wayan  | IT         | 8.000.000 |
| 3   | Ambon  | HR         | 7.000.000 |
| 4   | Kacang | Marketing  | 6.000.000 |

<br>

**Mengambil Semua Data**:

untuk melihat seluruh isi tabel.

```Sql
SELECT * FROM karyawan;
```

**Mengambil Kolom Spesifik dengan Filter**:

Bisa digunakan untuk melihat nama, dan gaji secaa spesifik.

```Sql
SELECT nama, gaji
FROM karyawan
WHERE departemen = 'IT';
```

## Latihan

Latihan didasarkan pada data sebelumnya.

**Soal**:

1. Menampilkan kolom `nama` untuk semua karyawan

```Sql
SELECT nama FROM karyawan;
```

2. Menampilakn semua `gaji` karyawan yang memiliki gaji lebih dari 7.000.000

```Sql
SELECT * FROM karyawan
WHERE gaji > 7000000;
```

3. Menampilkan `nama` dan `departemen` untuk karyawan bernama 'Bengs'.

```Sql
SELECT nama, departemen
FROM karyawan
WHERE nama = 'Bengs';
```

<br>

## Catatan

- SQL tidak memiliki _case-sensitive_, ketika menuliskan instruksi sql kita dapat menggunakan huruf kecil `select` atau huruf besar `SELECT`.
- Namun untuk value (data) bersifat sensitif, jika kita mengambil nilai dengan format yang salah, query akan dianggap gagal. Berbeda anatar 'IT' dan 'it'.
