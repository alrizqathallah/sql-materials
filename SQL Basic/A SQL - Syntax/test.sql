--SELECT
SELECT kolom1, kolom2
FROM nama_tabel
WHERE kondisi
ORDER BY kolom_tertentu ASC | DESC;

--INSERT
INSERT INTO nama_tabel (kolom1, kolom2)
VALUES (nilai1, nilai2);

--UPDATE
UPDATE nama_tabel
SET kolom1 = nilai_baru
WHERE kondisi;


--DELETE
DELETE FROM nama_tabel
WHERE kondisi;

--Menampilkan nama produk dengan kategori 'Elektronik' dan urutkan dari yang termahal.
SELECT nama_produk
FROM produk
WHERE kategori = 'Elektronik'
ORDER BY harga DESC;

--Menambahkan produk baru dengan nama 'Kursi', kategori 'Furnitur', harga 500.000, stok 10 dan id 505.
INSERT INTO produk (id_produk, nama_produk, kategori, harga, stok)
VALUES (505, 'Kursi', 'Furniture', 500.000, 10);

--Menambahkan produk baru dengan nama 'Kursi', kategori 'Furnitur', harga 500.000, stok 10 dan id 505.
INSERT INTO produk (id_produk, nama_produk, kategori, harga, stok)
VALUES (505, 'Kursi', 'Furniture', 500.000, 10);

--Merubah `stok` menjadi 15 untuk produk yang memiliki `id_produk` 102.
SET stok = 10
WHERE id_produk = 505;

--Menampilkan semua kolom dari tabel `produk` yang memiliki `harga` kurang dari 1.000.000.
SELECT * FROM produk
WHERE harga < 1000000;

--Menghapus data produk yang bernama 'Meja'.
DELETE FROM produk
WHERE nama_produk = 'Meja';