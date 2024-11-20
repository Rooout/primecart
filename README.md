# primecart

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Tugas 7

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget: StatelessWidget adalah widget yang tidak berubah setelah dibuat. Penampilan dan properti widget ini tetap konstan sepanjang siklus hidupnya. Contohnya adalah teks atau ikon dasar yang tidak berubah seiring waktu. Karena StatelessWidget tidak memiliki "state" (keadaan) yang bisa berubah, widget ini hanya membutuhkan metode build untuk menampilkan tampilan awal.

Stateful Widget: StatefulWidget adalah widget yang bisa berubah selama siklus hidupnya. Widget ini memiliki objek State yang menyimpan data dan properti yang bisa berubah seiring waktu. StatefulWidget berguna jika Anda ingin mengubah tampilan widget secara dinamis, seperti memperbarui UI sebagai respons terhadap interaksi pengguna. Widget ini memiliki metode seperti setState() untuk memperbarui dan menyegarkan UI saat terjadi perubahan.

Perbedaan utama: StatelessWidget bersifat tetap dan tidak bereaksi terhadap perubahan, sedangkan StatefulWidget bersifat dinamis dan memungkinkan perubahan pada tampilan karena memiliki state yang dapat dimodifikasi selama aplikasi berjalan.


Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Scaffold: Menyediakan struktur dasar halaman, termasuk AppBar, body, dan elemen standar lainnya.
AppBar: Menampilkan bilah alat di bagian atas layar, biasanya untuk menampilkan judul atau memberikan kontrol navigasi.
Padding: Menambahkan spasi di sekitar widget untuk membuat jarak antara widget tersebut dan widget lain.
Column: Menyusun widget anak secara vertikal dalam satu kolom.
Row: Menyusun widget anak secara horizontal dalam satu baris.
Card: Membuat area persegi panjang dengan sudut melengkung dan bayangan, sering digunakan untuk menampilkan informasi dalam format yang terpisah secara visual.
Text: Menampilkan teks di dalam aplikasi, yang bisa diatur gayanya dengan berbagai properti seperti ukuran font dan ketebalan.
GridView.count: Membuat tata letak grid dengan jumlah kolom tetap, berguna untuk menampilkan widget dalam bentuk grid.
Material: Menyediakan gaya dan properti material, seperti warna latar belakang dan bentuk, untuk widget yang ada di dalamnya.
InkWell: Membungkus widget dan membuatnya merespons sentuhan dengan efek ripple, memberikan umpan balik visual kepada pengguna.
Icon: Menampilkan ikon dari pustaka Material Design atau ikon khusus.
SnackBar: Menampilkan pesan singkat di bagian bawah layar, biasanya untuk memberikan umpan balik sebagai respons terhadap aksi pengguna.

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState(): Dalam StatefulWidget, setState() digunakan untuk memperbarui state dan merender ulang UI agar mencerminkan perubahan. Ketika setState() dipanggil, Flutter akan memanggil ulang metode build dari widget untuk menampilkan data terbaru.

Variabel yang terdampak: Hanya variabel dalam kelas State dari widget tersebut yang terdampak oleh setState(). Variabel-variabel ini harus dikelola oleh state dan bisa berupa properti apa pun yang digunakan di dalam metode build. Sebagai contoh, jika kita memiliki variabel yang melacak jumlah kali tombol ditekan, setState() akan memungkinkan kita memperbarui variabel ini dan merender ulang tampilan untuk menunjukkan jumlah yang baru.


Jelaskan perbedaan antara const dengan final.
const: Digunakan untuk variabel yang nilainya sudah ditentukan pada saat kompilasi dan tidak bisa berubah setelahnya. const juga digunakan untuk membuat widget dan objek yang tidak dapat diubah dalam Flutter. Konstanta const bersifat tidak dapat diubah hingga ke properti terdalamnya, artinya bahkan properti yang ada dalam objek const tidak dapat diubah.

final: Digunakan untuk variabel yang hanya diinisialisasi sekali dan tidak dapat diubah setelahnya, tetapi nilainya bisa diatur saat runtime. Variabel final diinisialisasi pada saat runtime dan bisa menyimpan nilai yang tidak diketahui saat kompilasi.

Perbedaan utama: const adalah konstanta pada waktu kompilasi, sedangkan final adalah konstanta pada waktu runtime. const lebih ketat dan digunakan terutama untuk nilai yang sudah diketahui sebelumnya, sementara final digunakan untuk nilai yang diatur sekali pada saat runtime.


Jelaskan bagaimana cara kamu msengimplementasikan checklist-checklist di atas.
Tema dan Struktur Aplikasi: Saya menggunakan Scaffold untuk struktur utama, dengan AppBar untuk menampilkan judul "Prime Cart". Widget Padding, Column, dan Row digunakan untuk menyusun elemen-elemen secara vertikal dan horizontal dalam tata letak yang terstruktur.

Informasi Kartu: Setiap informasi (misalnya, NPM, Nama, Kelas) ditampilkan menggunakan widget InfoCard, yang merupakan Card dengan widget Text untuk menampilkan label dan nilainya.

Tombol-Tombol: Saya membuat kelas ItemHomepage untuk mewakili setiap tombol dengan properti untuk nama, ikon, dan warna. Widget ItemCard kemudian mengambil setiap item ItemHomepage dan menampilkannya sebagai tombol berwarna dengan InkWell agar responsif terhadap sentuhan.

Warna Berbeda pada Setiap Tombol: Untuk setiap item ItemHomepage, saya memberikan warna unik dan meneruskan warna ini ke ItemCard, sehingga setiap tombol memiliki warna latar yang berbeda.

SnackBar: Ketika tombol ditekan, InkWell memicu peristiwa onTap yang menampilkan SnackBar dengan pesan tertentu. Pesan ini berbeda tergantung tombol yang ditekan, memungkinkan feedback diberikan kepada pengguna.


Tugas 8

Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const di Flutter digunakan untuk membuat objek yang bersifat immutable atau tidak dapat diubah dan hanya diinisialisasi satu kali pada waktu kompilasi. Artinya, nilai dari objek yang ditandai dengan const tidak akan berubah saat aplikasi berjalan, sehingga menghemat penggunaan memori dan mempercepat waktu rendering.

Keuntungan menggunakan const:

Efisiensi memori: Objek yang ditandai sebagai const disimpan dalam satu lokasi memori yang sama. Objek const hanya dibuat satu kali dan digunakan kembali jika diperlukan, sehingga mengurangi alokasi memori berulang.
Peningkatan kinerja: Flutter akan lebih cepat merender widget const karena Flutter tahu bahwa nilai objek tersebut tidak akan berubah. Ini meminimalkan perhitungan ulang ketika ada perubahan state.
Kapan menggunakan const:

Gunakan const pada widget atau objek yang sifatnya statis dan tidak akan berubah selama aplikasi berjalan, seperti teks, ikon, atau widget yang tidak bergantung pada data dinamis.
Kapan tidak menggunakan const:

Jangan gunakan const untuk objek atau widget yang nilainya perlu berubah selama aplikasi berjalan (misalnya, data yang dipengaruhi oleh interaksi pengguna).


Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column dan Row adalah widget yang digunakan untuk mengatur tata letak secara vertikal dan horizontal, berturut-turut.

Column: Mengatur widget dalam arah vertikal (dari atas ke bawah).
Misalnya, Column berguna saat menampilkan elemen yang tersusun vertikal, seperti form isian data.
Row: Mengatur widget dalam arah horizontal (dari kiri ke kanan).
Cocok digunakan untuk menampilkan elemen yang bersebelahan secara horizontal, seperti ikon dan teks pada tombol.

Contoh Implementasi
// Column
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: const [
    Text("Nama Produk"),
    TextField(),
    SizedBox(height: 10),
    Text("Harga"),
    TextField(),
  ],
)

// Row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const [
    Icon(Icons.star, color: Colors.yellow),
    Text("Rating: 4.5"),
  ],
)

Pada contoh di atas:
Column digunakan untuk menampilkan elemen-elemen form vertikal yang terdiri dari label dan field input.
Row digunakan untuk menampilkan elemen rating produk secara horizontal dengan ikon dan teks.


Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form untuk tugas ini, elemen input yang digunakan adalah:

TextFormField: Digunakan untuk memasukkan data berupa teks (seperti nama produk dan deskripsi).
ElevatedButton: Tombol untuk menyimpan data yang telah diisi.
Elemen Input Lain yang Tidak Digunakan:

Checkbox: Untuk memilih antara dua status (aktif atau tidak aktif).
Radio Button: Untuk memilih satu opsi dari beberapa pilihan.
Switch: Untuk mengaktifkan atau menonaktifkan suatu fitur.
Slider: Untuk mengatur nilai dalam rentang tertentu, misalnya intensitas atau volume.


Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk menjaga konsistensi gaya visual dalam aplikasi, Flutter mendukung penggunaan tema melalui ThemeData. Tema ini memungkinkan kita mengatur warna, font, ikon, dan gaya visual lainnya agar seragam di seluruh aplikasi.

Mengatur Tema:

Tema diatur di MaterialApp, dengan menggunakan properti theme.
Anda bisa mendefinisikan skema warna utama, teks, tombol, dan ikon secara terpusat, sehingga tidak perlu diatur ulang di setiap widget.


Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Menggunakan navigator yang cara kerjanya seperti stack seperti contoh implementasi pada tutorial

Metode Navigasi yang Umum:
Push: Untuk menambahkan halaman baru di atas halaman saat ini.
PushReplacement: Untuk menggantikan halaman saat ini dengan halaman baru, tanpa menambahkannya ke tumpukan.
Pop: Untuk kembali ke halaman sebelumnya dengan menghapus halaman saat ini dari tumpukan.


Tugas 9


Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Representasi Data: Model digunakan untuk merepresentasikan struktur data secara terorganisir. Dengan model, data yang dikirim atau diterima dapat dimanipulasi sesuai dengan kebutuhan aplikasi.
Validasi dan Integritas: Model membantu memvalidasi data yang masuk ke sistem agar sesuai dengan aturan, seperti memastikan harga produk harus berupa angka positif atau nama tidak boleh kosong.
Kesesuaian dengan Database: Django memanfaatkan ORM (Object-Relational Mapping) untuk membuat tabel di database berdasarkan model. Tanpa model, Django tidak dapat memahami struktur data yang akan digunakan.
Serialisasi Data: Untuk mengirimkan data dalam format JSON, model membantu proses serialisasi (mengubah objek Python menjadi JSON) dengan lebih mudah.
Jika Tidak Membuat Model
Akan terjadi error atau kesulitan dalam mengatur data:
Database Error: Django tidak dapat membuat tabel atau menyimpan data tanpa model.
Kesalahan Struktur JSON: Tanpa model, struktur data yang dikirimkan kemungkinan besar tidak konsisten.
Validasi Manual: Anda perlu memvalidasi setiap atribut secara manual, yang memperbesar risiko kesalahan.


Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk melakukan request HTTP (GET, POST, PUT, DELETE, dll.) dari aplikasi Flutter ke server. Pada tugas ini, fungsi utama http adalah:

Mengambil Data (GET): Library http digunakan untuk mengirim permintaan GET ke endpoint Django untuk mendapatkan data JSON produk.
Mengirim Data (POST): Library ini juga digunakan untuk mengirim data dari Flutter ke Django, seperti data login, registrasi, atau penambahan produk.
Pengelolaan Response: Library mempermudah pengelolaan response dari server, seperti decoding JSON yang diterima atau menangani error dari server.


Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter
CookieRequest adalah class yang digunakan untuk mengelola autentikasi berbasis cookie pada aplikasi Flutter. Fungsi utamanya adalah:

Menyimpan Cookie: Setelah login berhasil, server Django mengirimkan cookie autentikasi. Cookie ini disimpan oleh CookieRequest dan digunakan untuk autentikasi di request berikutnya.
Mengelola Request: CookieRequest mempermudah pengiriman request HTTP (GET, POST, dll.) dengan menambahkan header yang diperlukan, seperti cookie autentikasi.
Memastikan Otentikasi: Dengan adanya CookieRequest, aplikasi Flutter dapat menjaga sesi pengguna tetap aktif tanpa perlu login ulang.
Mengapa Instance CookieRequest Dibagikan
State Global: Cookie autentikasi harus dapat diakses oleh semua komponen aplikasi Flutter, seperti saat mengambil data produk atau melakukan logout.
Pengelolaan Sesi: Dengan berbagi instance CookieRequest, semua request di aplikasi akan menggunakan cookie yang sama, memastikan sesi tetap valid.


Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Langkah-Langkah
Input Data: Pengguna memasukkan data pada form di aplikasi Flutter (misalnya, form untuk menambahkan produk).
Request ke Django:
Data dari form dikirimkan menggunakan metode POST melalui CookieRequest atau library http.
Data dikirim dalam format JSON ke endpoint Django.
Proses di Server Django:
Django menerima request dan memvalidasi data yang dikirimkan.
Data disimpan ke database menggunakan model Django.
Response JSON:
Django mengirimkan response JSON, misalnya data produk yang baru ditambahkan.
Tampilkan di Flutter:
Flutter menerima response JSON, melakukan decoding, dan mengubahnya menjadi objek Dart (misalnya, objek Product).
Data ditampilkan di widget Flutter menggunakan FutureBuilder atau mekanisme lain.


Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Login
Input:
Pengguna memasukkan username dan password di Flutter.
Data dikirim melalui POST ke endpoint /login/.
Proses di Django:
Django memverifikasi username dan password.
Jika valid, server mengirimkan cookie autentikasi dalam response.
Response ke Flutter:
Cookie autentikasi disimpan oleh CookieRequest.
Setelah login berhasil, Flutter mengarahkan pengguna ke halaman utama.
Register
Input:
Pengguna memasukkan data registrasi di Flutter (username, email, password, dll.).
Data dikirimkan ke endpoint /register/ melalui POST.
Proses di Django:
Django memvalidasi data dan membuat akun baru di database.
Server mengirimkan pesan sukses jika registrasi berhasil.
Response ke Flutter:
Flutter menampilkan pesan sukses atau error, sesuai dengan response dari server.
Logout
Request Logout:
Flutter mengirimkan request ke endpoint /logout/.
Proses di Django:
Django menghapus cookie autentikasi di sisi server.
Response ke Flutter:
Flutter menghapus sesi pengguna dan mengarahkan pengguna ke halaman login.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Langkah Implementasi
Persiapan Django:

Membuat model Product untuk menyimpan data produk.
Menambahkan endpoint untuk login, register, logout, dan manipulasi data JSON.
Menggunakan serializer untuk memproses data ke/dari JSON.
Membuat Flutter Project:

Membuat widget dasar, seperti halaman login, register, dan daftar produk.
Menambahkan pbp_django_auth untuk mengelola autentikasi berbasis cookie.
Implementasi Fungsi HTTP di Flutter:

Menggunakan http atau CookieRequest untuk melakukan request ke server Django.
Memastikan data JSON yang diterima dapat diubah menjadi objek Dart.
Testing:

Memastikan setiap fitur (login, register, logout, tambah produk) berjalan sesuai alur, dari input hingga tampil di Flutter.
Refactor:

Membersihkan kode dan memastikan konsistensi struktur data di Django dan Flutter.

