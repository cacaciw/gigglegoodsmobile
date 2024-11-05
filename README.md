# gigglegoods

## Tugas 7
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
   - Stateless Widget adalah widget yang tidak memiliki keadaan (state) yang dapat berubah. Setelah widget ini dibuat, tampilannya akan tetap sama sepanjang siklus hidupnya, kecuali jika dipicu oleh perubahan dari luar, seperti perubahan data yang dikirimkan ke widget tersebut. Contoh Stateless Widget meliputi widget seperti Text, Icon, dan Image, yang umumnya digunakan untuk elemen-elemen statis atau tetap.
   - Stateful Widget adalah widget yang memiliki keadaan (state) yang dapat berubah selama aplikasi berjalan. Hal ini memungkinkan widget untuk merespons interaksi pengguna atau perubahan data secara dinamis. Stateful Widget terdiri dari dua bagian: kelas widget itu sendiri dan kelas state yang mengelola data yang berubah. Untuk memperbarui tampilan widget, Stateful Widget menggunakan fungsi setState, yang akan memberitahukan Flutter untuk merender ulang tampilan sesuai perubahan data. Contoh umum penggunaan Stateful Widget adalah untuk elemen interaktif seperti tombol atau formulir yang memerlukan respons terhadap masukan pengguna.
   - Perbedaan utama antara keduanya adalah pada pengelolaan data dan tampilan: Stateless Widget cocok untuk elemen yang statis, sementara Stateful Widget cocok untuk elemen yang dinamis dan responsif terhadap interaksi atau perubahan data.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
   Pada proyek ini, saya menggunakan beberapa widget Flutter, berikut penjelasannya:
   
a. Scaffold:
   - Fungsi: Menyediakan struktur dasar untuk halaman aplikasi, termasuk AppBar, Body, dan lain-lain.
   - Digunakan pada `MyHomePage` untuk membentuk struktur halaman utama aplikasi.
     
b. AppBar:
   - Fungsi: Memberikan header atau judul di bagian atas halaman.
   - Digunakan pada `MyHomePage` untuk menampilkan judul aplikasi "Giggle Goods".
c. Padding:
   - Fungsi: Memberikan ruang kosong di sekitar widget anak di dalam widget induk.
   - Digunakan pada `MyHomePage` untuk memberi jarak antara konten dan tepi layar.
     
d. Column:
   - Fungsi: Menyusun widget anak secara vertikal.
   - Digunakan pada `MyHomePage` untuk menyusun informasi akun dan grid tombol.
     
e. Row:
   - Fungsi: Menyusun widget anak secara horizontal.
   - Digunakan pada `MyHomePage` untuk menyusun InfoCard secara horizontal.
     
f. GridView:
   - Fungsi: Menyusun widget anak dalam bentuk grid.
   - Digunakan pada `MyHomePage` untuk menampilkan grid dari ItemCard.
     
g. Card:
   - Fungsi: Membungkus widget anak dengan tampilan seperti kartu.
   - Digunakan pada `InfoCard` dan `ItemCard` untuk memberikan tampilan kartu.
     
h. Text:
   - Fungsi: Menampilkan teks.
   - Digunakan di berbagai tempat untuk menampilkan judul, informasi, dan label.
     
i. Icon:
   - Fungsi: Menampilkan ikon.
   - Digunakan pada `ItemCard` untuk menampilkan ikon sesuai dengan jenis tombol.
     
j. Material:
   - Fungsi: Memberikan tampilan material design pada widget.
   - Digunakan pada `ItemCard` untuk memberikan efek "sentuhan" ketika ditekan.
   
k. InkWell:
   - Fungsi: Menambahkan efek "sentuhan" pada widget.
   - Digunakan pada `ItemCard` untuk memberikan respons ketika tombol ditekan.


3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
  Fungsi setState() dalam Stateful Widget di Flutter digunakan untuk memperbarui tampilan widget ketika ada perubahan data. Saat *setState()* dipanggil, Flutter akan merender ulang widget     yang terpengaruh, memastikan tampilan sesuai dengan data terbaru.
  Variabel yang Terpengaruh oleh setState()
  - Data Tampilan: Variabel yang menentukan konten tampilan seperti teks, angka, atau gambar.
  - Status Interaktif: Data yang berubah berdasarkan interaksi pengguna, seperti input atau status tombol.
  - Kondisi Tampilan: Variabel yang mengatur kondisi tampilan (misalnya, warna, visibilitas elemen) sesuai logika aplikasi.
  Gunakan setState() hanya pada variabel yang mempengaruhi tampilan agar aplikasi tetap efisien.

4. Jelaskan perbedaan antara const dengan final.
   Berikut adalah perbedaan antara const dan final dalam Dart:
   a.  Penggunaan:
   - const: Digunakan untuk mendeklarasikan nilai yang bersifat konstan dan tidak dapat diubah. Nilai tersebut harus diketahui pada saat kompilasi.
   - final: Digunakan untuk mendeklarasikan nilai yang hanya dapat diinisialisasi sekali. Nilai ini dapat ditentukan saat runtime, tetapi setelah ditetapkan, tidak dapat diubah.

   b. Inisialisasi:
   - const: Harus diinisialisasi dengan nilai yang sudah tetap pada waktu kompilasi. Contoh: const pi = 3.14;
   - final: Dapat diinisialisasi dengan nilai yang ditentukan secara dinamis. Contoh: final currentTime = DateTime.now();

   c. Memori:
   - const: Menghasilkan objek tunggal yang sama di memori jika nilainya sama. Ini dapat menghemat penggunaan memori.
   - final: Setiap kali mendeklarasikan variabel final, objek baru akan dibuat jika nilai diinisialisasi kembali dengan nilai yang berbeda.

  Dengan kata lain, gunakan const untuk nilai tetap yang tidak akan pernah berubah dan diketahui pada waktu kompilasi, sedangkan final untuk nilai yang diinisialisasi sekali namun bisa ditentukan pada runtime.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
   Setelah saya create new app dengan nama gigglegoods, saya melakukan langkah-langkah dibawah ini:
   
   a. Membuat tiga tombol sederhana dengan ikon dan teks:
   - Saya menggunakan `ItemHomepage` dan `ItemCard` untuk mewakili setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
   - Setiap `ItemHomepage` memiliki `name` (teks) dan `icon` yang ditampilkan di dalam `ItemCard`.

   b. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol:
   - Saya menambahkan satu properti `color` pada `ItemHomepage`.
   - Dalam `items` list, saya mengatur warna masing-masing tombol: `Colors.pink`, `Colors.blue`, dan `Colors.purple`.
   - Di `ItemCard`, saya menggunakan warna dari `ItemHomepage` sebagai warna latar belakang kartu.

   c. Memunculkan `Snackbar` saat tombol ditekan:
   - Dalam `ItemCard`, saya menambahkan `onTap` callback yang akan menampilkan `Snackbar` saat tombol ditekan.
   - Pesan `Snackbar` berisi teks "Kamu telah menekan tombol ${item.name}!".








  
