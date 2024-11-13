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

