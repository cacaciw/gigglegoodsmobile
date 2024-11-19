# GiggleGoods

## Tugas 7
1.  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Tentu! Berikut penjelasan singkatnya:
- Stateless Widget: Widget yang **tidak memiliki state** dan tidak berubah setelah dibuat. Cocok untuk elemen statis seperti teks atau ikon.
- Stateful Widget: Widget yang **memiliki state** dan bisa berubah selama aplikasi berjalan. Cocok untuk elemen dinamis, seperti tombol yang menambah angka.
Perbedaan utama:
- Stateless: Tidak bisa berubah, lebih ringan.
- Stateful: Bisa berubah dengan `setState()`, lebih kompleks.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, saya menggunakan beberapa *widget* Flutter, berikut penjelasannya:

a. Scaffold:
    Fungsi: Menyediakan struktur dasar untuk halaman aplikasi, termasuk *AppBar*, *Body*, dan lainlain.
    Digunakan pada `MyHomePage` untuk membentuk struktur halaman utama aplikasi.

b. AppBar:
    Fungsi: Memberikan header atau judul di bagian atas halaman.
    Digunakan pada `MyHomePage` untuk menampilkan judul aplikasi "Giggle Goods".

c. Padding:
    Fungsi: Memberikan ruang kosong di sekitar *widget* anak di dalam *widget* induk.
    Digunakan pada `MyHomePage` untuk memberi jarak antara konten dan tepi layar.

d. Column:
    Fungsi: Menyusun *widget* anak secara vertikal.
    Digunakan pada `MyHomePage` untuk menyusun informasi akun dan grid tombol.

e. Row:
    Fungsi: Menyusun *widget* anak secara horizontal.
    Digunakan pada `MyHomePage` untuk menyusun *InfoCard* secara horizontal.

f. GridView:
    Fungsi: Menyusun *widget* anak dalam bentuk grid.
    Digunakan pada `MyHomePage` untuk menampilkan grid dari *ItemCard*.

g. Card:
    Fungsi: Membungkus *widget* anak dengan tampilan seperti kartu.
    Digunakan pada `InfoCard` dan `ItemCard` untuk memberikan tampilan kartu.

h. Text:
    Fungsi: Menampilkan teks.
    Digunakan di berbagai tempat untuk menampilkan judul, informasi, dan label.

i. Icon:
    Fungsi: Menampilkan ikon.
    Digunakan pada `ItemCard` untuk menampilkan ikon sesuai dengan jenis tombol.

j. Material:
     Fungsi: Memberikan tampilan material design pada *widget*.
     Digunakan pada `ItemCard` untuk memberikan efek "sentuhan" ketika ditekan.

k.  InkWell:
     Fungsi: Menambahkan efek "sentuhan" pada *widget*.
     Digunakan pada `ItemCard` untuk memberikan respons ketika tombol ditekan.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` digunakan untuk **memperbarui tampilan** widget yang bersifat **Stateful** dengan **mengubah nilai state**. Saat dipanggil, Flutter akan memicu pembaruan tampilan widget tersebut.

Variabel yang terdampak oleh `setState()` adalah **variabel yang ada dalam kelas `State`** dan yang digunakan di dalam `build()` method, biasanya variabel yang menyimpan data dinamis. Setelah `setState()` dipanggil, Flutter akan merender ulang widget dengan nilai terbaru.

4.  Jelaskan perbedaan antara const dengan final.
Berikut perbedaan antara `const` dan `final` dalam Dart:

- `const`: Menandakan bahwa nilai variabel sudah tetap (konstan) pada waktu kompilasi dan tidak bisa diubah. `const` digunakan untuk mendeklarasikan nilai konstan yang sudah diketahui sebelum aplikasi dijalankan.

- `final`: Menandakan bahwa variabel hanya bisa diinisialisasi sekali, tetapi nilai variabel tersebut dapat ditentukan pada saat runtime (ketika aplikasi berjalan).

Perbedaan utama:
- `const`: Nilai sudah tetap saat kompilasi.
- `final`: Nilai hanya bisa ditetapkan sekali, tapi bisa berubah pada runtime.

4. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
a. Membuat tiga tombol sederhana dengan ikon dan teks:
   - Saya menggunakan `ItemHomepage` dan `ItemCard` untuk mewakili setiap tombol.
   - Setiap `ItemHomepage` memiliki `name` (teks) dan `icon` yang ditampilkan di dalam `ItemCard`.

b. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol:
   - Saya menambahkan satu properti `color` pada `ItemHomepage`.
   - Dalam `items` list, saya mengatur warna masing-masing tombol: `Colors.pink`, `Colors.blue`, dan `Colors.purple`.
   - Di `ItemCard`, saya menggunakan warna dari `ItemHomepage` sebagai warna latar belakang kartu.

c. Memunculkan `Snackbar` saat tombol ditekan:
   - Dalam `ItemCard`, saya menambahkan `onTap` callback yang akan menampilkan `Snackbar` saat tombol ditekan.
   - Pesan `Snackbar` berisi teks "Kamu telah menekan tombol ${item.name}!".

Secara keseluruhan, implementasi ini dilakukan dengan memanfaatkan konsep *widget*, *state management*, dan *event handling* yang ada di Flutter. Saya membuat struktur dan logika aplikasi sedemikian rupa sehingga dapat memenuhi checklist yang diberikan.

## Tugas 8
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, const digunakan untuk mendeklarasikan widget atau objek yang bersifat konstan dan tidak berubah sepanjang waktu. Penggunaan const di Flutter membantu untuk meningkatkan kinerja dengan cara menghindari pembuatan ulang objek yang sama.

Keuntungan Menggunakan const:
- Penghematan Memori, Dengan menggunakan const, Flutter tidak perlu membuat ulang objek yang sama setiap kali widget di-render, karena objek const hanya dibuat sekali.
- Peningkatan Kinerja, Mengurangi overhead konstruksi objek dan mempercepat rendering aplikasi karena objek const tidak perlu dihitung ulang.
- Pengoptimalan Widget, const dapat mengoptimalkan rendering widget seperti Text, Icon, atau widget stateless lainnya yang bersifat tetap dan tidak berubah.
Kapan Menggunakan const:
- Ketika nilai widget atau objek tidak berubah sepanjang waktu dan tidak bergantung pada input atau kondisi runtime. Contohnya, widget seperti Text atau Icon yang kontennya tetap.
- Untuk menghindari pembuatan ulang objek yang sama saat widget dirender ulang.
Kapan Tidak Menggunakan const:
- Ketika objek atau widget memiliki nilai yang berubah atau bergantung pada state aplikasi (misalnya data yang dinamis).
- Ketika objek atau widget memerlukan perhitungan atau perubahan nilai pada runtime.

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Di Flutter, `Column` dan `Row` adalah layout widgets yang digunakan untuk menyusun elemen-elemen secara vertikal atau horizontal.

a. Column
- Fungsi: Menyusun elemen-elemen secara vertikal (dari atas ke bawah).
- Keuntungan: Digunakan untuk menampilkan widget secara berurutan dalam arah vertikal.
- Contoh Penggunaan:
  - Biasanya digunakan untuk form, daftar, atau elemen yang perlu diatur secara vertikal.

Contoh Implementasi `Column`:
```
Column(
  children: [
    Text('Teks pertama'),
    Text('Teks kedua'),
    ElevatedButton(onPressed: () {}, child: Text('Tombol'))
  ],
)
```

b. Row
- Fungsi: Menyusun elemen-elemen secara horizontal (dari kiri ke kanan).
- Keuntungan: Digunakan untuk menampilkan widget secara berurutan dalam arah horizontal.
- Contoh Penggunaan:
  - Cocok untuk menampilkan elemen seperti ikon, tombol, atau elemen-elemen kecil yang saling berdekatan secara horizontal.

Contoh Implementasi `Row`:
```
Row(
  children: [
    Icon(Icons.home),
    Text('Beranda'),
    Icon(Icons.settings),
  ],
)
```

Perbandingan:
- Column: Menyusun widget secara vertikal (atas ke bawah).
- Row: Menyusun widget secara horizontal (kiri ke kanan).

Kapan Menggunakan Column atau Row?
- Gunakan `Column` saat ingin menampilkan elemen secara vertikal, seperti form atau daftar panjang.
- Gunakan `Row` saat elemen-elemen perlu ditempatkan dalam satu baris secara horizontal, seperti tombol atau ikon yang berdampingan.

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form yang saya buat di Flutter, elemen input yang digunakan adalah:
- TextFormField:
Digunakan untuk menerima input teks dari pengguna.
Ada tiga TextFormField yang masing-masing digunakan untuk:
Product: Untuk memasukkan nama produk.
Amount: Untuk memasukkan jumlah produk.
Price: Untuk memasukkan harga produk.
- ElevatedButton:
Digunakan sebagai tombol untuk menyimpan data dan memvalidasi form.
Ketika tombol ditekan, validasi form dijalankan, dan jika valid, sebuah dialog menampilkan informasi produk yang dimasukkan.
Elemen Input Flutter Lain yang Tidak Digunakan:

Beberapa elemen input Flutter lain yang tidak digunakan dalam form ini adalah:
- Checkbox: Untuk memilih opsi dengan centang (misalnya, menyetujui syarat dan ketentuan).
- Radio: Untuk memilih satu opsi dari beberapa pilihan (misalnya, memilih kategori produk).
- Switch: Untuk memilih antara dua status, seperti ON/OFF.
- DropdownButton: Untuk memilih satu opsi dari daftar pilihan.
- DatePicker: Untuk memilih tanggal.
- Slider: Untuk memilih nilai dalam rentang tertentu (misalnya, rating).

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk mengatur tema dalam aplikasi Flutter dan menjaga konsistensi, saya menggunakan **`ThemeData`** dalam **`MaterialApp`**. Pada kode yang Anda berikan, tema aplikasi ditentukan dengan mengonfigurasi **`colorScheme`** menggunakan **`ColorScheme.fromSwatch`** yang menetapkan warna utama (**`primarySwatch`**) dan warna sekunder (**`secondary`**).

Pengaturan tema ini akan memastikan bahwa seluruh aplikasi menggunakan warna yang konsisten. Misalnya, toolbar (AppBar) akan menggunakan warna yang ditentukan dalam **`colorScheme`** tanpa perlu pengaturan manual pada setiap widget. 

Dengan cara ini, aplikasi akan mempertahankan konsistensi visual di seluruh halaman, memudahkan modifikasi desain, dan memungkinkan perubahan warna global melalui **`colorScheme`**.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi halaman di Flutter menggunakan widget **Navigator**, yang mengelola tumpukan (stack) halaman (route). Beberapa method utama untuk navigasi adalah:

a. **push()**: Menambahkan halaman baru ke stack, membuat halaman baru muncul di atas halaman yang ada.
   ```
   Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
   ```

b. **pop()**: Menghapus halaman yang sedang tampil (di atas stack) dan kembali ke halaman sebelumnya.
   ```
   Navigator.pop(context);
   ```

c. **pushReplacement()**: Mengganti halaman yang sedang tampil dengan halaman baru tanpa menambahkannya ke stack.
   ```
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewPage()));
   ```

**Perbedaan push() dan pushReplacement()**: 
- **push()** menambah halaman baru di atas stack.
- **pushReplacement()** menggantikan halaman yang ada dengan halaman baru.
Selain itu, ada method lain seperti **popUntil()**, **canPop()**, dan **maybePop()** yang bisa digunakan untuk kontrol navigasi lebih lanjut.

## Tugas 9
1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
- Struktur Data Konsisten: Model memastikan data yang diambil atau dikirim memiliki format dan struktur yang sesuai.
- Validasi Data: Model memvalidasi tipe dan nilai data sebelum diproses atau disimpan.
- Kemudahan Manipulasi: Model mempermudah konversi data JSON ke objek dan sebaliknya, sehingga lebih efisien untuk digunakan dalam aplikasi.
Tanpa model, tidak selalu terjadi error, tetapi:
- Data bisa tidak valid atau sulit dikelola.
- Aplikasi rentan terhadap bug karena format data tidak terjamin konsisten.
- Operasi seperti filtering atau transformasi data menjadi lebih rumit.

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library HTTP pada tugas ini digunakan untuk mengintegrasikan aplikasi dengan server, terutama dalam pengambilan atau pengiriman data melalui protokol HTTP. Dengan library ini, aplikasi dapat melakukan permintaan seperti GET untuk mengambil data atau POST untuk mengirim data ke server, serta menerima respons dalam format JSON yang dapat diolah lebih lanjut. Library ini memudahkan integrasi API, memungkinkan aplikasi berkomunikasi dengan server untuk memperoleh atau mengirim data secara dinamis dan real-time.

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Fungsi CookieRequest:  
`CookieRequest` digunakan untuk menangani autentikasi dan komunikasi HTTP dengan server. Library ini menyimpan cookie secara otomatis, sehingga mempermudah pengelolaan sesi pengguna, seperti login atau akses ke endpoint yang memerlukan autentikasi.
Alasan Dibagikan ke Semua Komponen:  
Instance `CookieRequest` perlu dibagikan agar semua komponen aplikasi dapat menggunakan cookie yang sama untuk menjaga konsistensi autentikasi dan sesi selama interaksi dengan server. Hal ini memastikan pengalaman pengguna yang lancar tanpa harus mengelola sesi secara manual di setiap komponen.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
a. Entri Data: Pengguna memasukkan informasi melalui elemen antarmuka interaktif seperti kolom teks atau formulir, memungkinkan pengumpulan data di dalam aplikasi.
b. Pengiriman Data: Informasi yang dikumpulkan diformat (biasanya dalam bentuk JSON) dan dikirim ke server melalui permintaan HTTP, menggunakan metode seperti POST. Mekanisme permintaan khusus membantu mentransfer data dengan aman.
c. Pemrosesan di Server: Setelah menerima data, server menerapkan logika bisnis aplikasi. Ini mungkin melibatkan penyimpanan informasi ke dalam database, melakukan perhitungan, atau menjalankan operasi lain yang diperlukan. Server kemudian menghasilkan respons yang berisi data terbaru atau status operasi.
d. Penanganan Respons: Aplikasi Flutter menerima respons dari server dan mengubahnya menjadi model data terstruktur. Model ini mempermudah pengelolaan data dengan menjaga struktur data yang konsisten dan dapat diprediksi.
e. Visualisasi Data: Model data yang telah diproses kemudian diintegrasikan dengan widget antarmuka pengguna seperti daftar atau tampilan teks. Kerangka kerja reaktif Flutter secara otomatis memperbarui antarmuka, memastikan pengguna dapat langsung melihat informasi yang mereka kirimkan atau hasil dari pemrosesan di server.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
A. Registrasi (Register)
Mekanisme:
a.Input Data di Flutter: Pengguna mengisi formulir pendaftaran (username, email, password, dll.).
b. Pengiriman ke Django: Data dikirim ke endpoint Django menggunakan metode POST (biasanya /register/).
c. Pemrosesan di Django: Django memvalidasi data (misalnya, email valid, password cukup kuat).Jika valid, Django membuat akun baru di database. Jika tidak valid, Django mengembalikan respons error (misalnya, username sudah digunakan).
d. Tanggapan ke Flutter:
Jika berhasil, Django mengirimkan respons sukses. Flutter dapat menampilkan pesan konfirmasi.
Jika gagal, Flutter menampilkan pesan error sesuai respons Django.

B. Login
Mekanisme:
a. Input Data di Flutter: Pengguna memasukkan username dan password ke formulir login.
b. Pengiriman ke Django: Data dikirim ke endpoint login Django (/login/) menggunakan metode POST.
c. Pemrosesan di Django: Django memverifikasi kredensial (username dan password cocok). Jika valid, Django membuat session atau mengirimkan token autentikasi ke Flutter (bergantung pada sistem autentikasi yang digunakan).
d. Tanggapan ke Flutter: Jika berhasil, Django mengirimkan token atau session ID yang disimpan di Flutter menggunakan library seperti CookieRequest. Jika gagal, Django mengembalikan pesan error (misalnya, "Username atau password salah").
e. Navigasi ke Menu: Flutter memeriksa keberhasilan login dan menavigasi pengguna ke halaman utama/menu.

C Logout
Mekanisme:
a. Permintaan Logout di Flutter: Pengguna menekan tombol logout, yang mengirim permintaan ke endpoint Django (/logout/) menggunakan metode POST atau GET.
b. Pemrosesan di Django: Django menghapus session atau token autentikasi pengguna di server. Django mengirimkan respons sukses.
c. Tanggapan di Flutter: Flutter menghapus data autentikasi yang tersimpan secara lokal (misalnya, session atau token di CookieRequest).
Flutter menavigasikan pengguna kembali ke halaman login.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
   - Membuat django app bernama authentication
   - Menambahkan authentication ke INSTALLED_APPS di settings.py
   - Menginstal corsheaders dan menambahkan nya pada MIDDLEWARE. Kemudian, menambahkan beberapa variabel cors pada settings.py
   - Buatlah method login pada views.py app authentication
   - Menginstall beberapa package yang dibutuhkan
   - Melakukan integrasi flutter pada main.dart
   - Membuat login page untuk flutter pada login.dart
   - Pada main/views.py buatlah method create_product_flutter dan hubungkan endpointnya di urls.py
   - Buatlah form submit, dengan fetch fungsi create_product_flutter di django web pada giggleentry_form.dart
   - Integrasikan form dengan CookieRequest
   - Membuat menu logout pada widget product_cart.dart
   - Mengubah giggle_foodentry.dart untuk membuat detail serta menghubungkan JSON Endpoint
   - Membuat fungsi logout di authentication/views.py dan konfigurasi url product_cart.dart agar tombol logout dapat digunakan
   - git add, commit, push


















