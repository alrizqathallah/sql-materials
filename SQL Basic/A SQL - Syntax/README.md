# SQL Syntax

## Aturan Dasar Syntax SQL

Perlu diketahui,

- Perintah SQL tidak *case-sensitive*, artinya kita dapat menggunakan huruf kecil atau kapital untuk menuliskan perintah. Namun sangat disaranakan menggunakan **HURUF KAPITAL** untuk menuliskan perintah SQL.

- Setiap statement atau perintah SQL, harus diakhiri dengan *semicolon* `;` diakhir perintah. Penutup tersebut sangat penting jika kita menjalankan beberapa query secara bersamaan.

- Tipe data 'teks' di SQL harus diapit *quotation-mark*, sama seperti bahasa pemrograman pada umumnya. Kecuali tipe data lain seperti bilangan yang tidak perlu menggunakan kutip.

## Struktur Komponen Utama (DQL dan DML)

**SELECT** (*Mengambil Data*)

```Sql
SELECT kolom1, kolom2
FROM nama_tabel
WHERE kondisi
ORDER BY kolom_tertentu ASC | DESC;
```

**INSERT INTO** (*Menambah Data*)

```Sql
INSERT INTO nama_tabel (kolom1, kolom2)
VALUES (nilai1, nilai2);
```

**UPDATE** (*Mengubah Data*)

Penting: Ketika melakukan update data selalu gunakan `WHERE` atau pengkondisian, mencegah isi seluruh tabel ikut terupdate (berubah).

```Sql
UPDATE nama_tabel
SET kolom1 = nilai_baru
WHERE kondisi;
```

**DELETE** (Menghapus Data)

```Sql
DELETE FROM nama_tabel
WHERE kondisi;
```

## Contoh Skenario

Dicontohkan dengan tabel `produk`:

| id_produk  | nama_produk   | kategori   | harga      | stok |
|------------|---------------|------------|------------|------|
| 101        | Laptop        | Elektronik | 15.000.000 | 5    |
| 202        | Mouse         | Elektronik | 2.000.000  | 15   |
| 303        | Keyboard      | Elektronik | 1.000.000  | 10   |
| 404        | Meja          | Furnitur   | 1.500.000  | 5    |

**Contoh Query**:

Menampilkan nama produk dengan kategori 'Elektronik' dan urutkan dari yang termahal.

```Sql
SELECT nama_produk
FROM produk
WHERE kategori = 'Elektronik'
ORDER BY harga DESC;
```

## Latihan

**contoh**:

1. Menambahkan produk baru dengan nama 'Kursi', kategori 'Furnitur', harga 500.000, stok 10 dan id 505.

```Sql
INSERT INTO produk (id_produk, nama_produk, kategori, harga, stok)
VALUES (505, 'Kursi', 'Furniture', 500.000, 10);
```

2. Merubah `stok` menjadi 15 untuk produk yang memiliki `id_produk` 102.

```Sql
SET stok = 10
WHERE id_produk = 505;
```

3. Menampilkan semua kolom dari tabel `produk` yang memiliki `harga` kurang dari 1.000.000.

```Sql
SELECT * FROM produk
WHERE harga < 1000000;
```

4. Menghapus data produk yang bernama 'Meja'.

```Sql
DELETE FROM produk
WHERE nama_produk = 'Meja';
```