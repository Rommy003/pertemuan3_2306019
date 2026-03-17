# Tugas Pertemuan 3 - Layout & Flexbox Flutter

**Nama:** Romy Zaenul Alam  
**NIM:** 2306019
**Mata Kuliah:** Praktikum Pemrograman Mobile  

## 📚 Pembahasan Modul 3: Layout & Flexbox
Pada pertemuan ke-3 ini, materi berfokus pada cara mengatur tata letak (*layout*) antarmuka pengguna di Flutter agar responsif dan rapi. Beberapa *widget* tata letak utama yang dibahas meliputi:

1. **Row dan Column**: `Row` menyusun widget turunannya secara horizontal (ke samping), sedangkan `Column` menyusun widget turunannya secara vertikal (ke bawah). Keduanya memiliki properti `MainAxisAlignment` dan `CrossAxisAlignment` untuk mengatur penyelarasan item di dalamnya.
2. **Stack dan Positioned**: `Stack` digunakan untuk menumpuk *widget* satu di atas yang lain (seperti lapisan/layer). `Positioned` digunakan di dalam Stack untuk menentukan posisi spesifik *widget* tersebut (atas, bawah, kiri, kanan).
3. **Expanded dan Flexible**: Digunakan di dalam Row atau Column untuk memberikan instruksi kepada *widget* agar mengisi/memperluas sisa ruang kosong yang tersedia secara proporsional menggunakan properti `flex`.
4. **GridView**: Digunakan untuk menampilkan sekumpulan *widget* dalam bentuk *grid* dua dimensi (baris dan kolom).

---

## 💻 Penjelasan Kode `main.dart`
Aplikasi "Toko OnlineKu" yang dibuat pada tugas ini mengimplementasikan konsep-konsep dari Modul 3 di atas dengan detail sebagai berikut:

* **Struktur Utama**: Menggunakan `Scaffold` sebagai kerangka halaman, dengan `AppBar` berwarna *teal* di bagian atas. Seluruh konten di bagian `body` dibungkus dengan `SingleChildScrollView` agar layar dapat di-*scroll* ke bawah jika konten melebihi ukuran layar.
* **Bagian Profil (Flex & Expanded)**: Menggunakan `Flex` dengan arah horizontal (fungsinya sama dengan `Row`). Di dalamnya terdapat dua `Expanded` untuk membagi proporsi lebar layar: `flex: 1` untuk foto profil (`CircleAvatar`), dan `flex: 10` untuk teks ucapan selamat datang.
* **Banner Flash Sale (Stack & Positioned)**: Menggunakan widget `Stack` agar teks "FLASH SALE UP TO 70% OFF" bisa diletakkan tepat di atas gambar *banner*. Teks tersebut dibungkus dengan `Positioned` agar posisinya terikat di pojok kiri bawah gambar (`bottom: 16`, `left: 16`).
* **Menu Kategori Produk (Row)**: Deretan tombol kategori disusun menggunakan `Row`. Properti `mainAxisAlignment: MainAxisAlignment.spaceEvenly` digunakan agar jarak antar tombol (Baju, Celana, Sepatu, dll) terbagi sama rata dan sejajar rapi dari kiri ke kanan.
* **Katalog Produk (GridView.count)**: Daftar produk ditampilkan menggunakan `GridView.count` dengan `crossAxisCount: 2` yang berarti layar dibagi menjadi 2 kolom. Produk ditampilkan menggunakan *widget* `Card` yang berisi gambar dan teks (nama barang dan harga). 
* **Penanganan Scroll GridView**: Karena `GridView` diletakkan di dalam `SingleChildScrollView`, ditambahkan properti `shrinkWrap: true` dan `physics: NeverScrollableScrollPhysics()` pada GridView agar tidak terjadi *error* bentrok *scroll* (membiarkan SingleChildScrollView yang mengambil alih fungsi *scroll*).
