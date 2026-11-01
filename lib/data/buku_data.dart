import 'package:flutter/material.dart';
import 'package:katalog_perpustakaan/models/buku.dart';

var daftarBuku = [
  Buku(
    judul: 'Jack and the Beanstalk',
    penulis: 'Benjamin Tabart',
    kategori: 'Petualangan Dan Fantasi',
    gambar: 'images/Buku1.jpeg',
    deskripsi:
        'Jack and the Beanstalk adalah cerita petualangan tentang Jack yang menemukan kacang ajaib dan mengalami petualangan luar biasa di atas awan.',
    penerbit: 'Dorling Kindersley (DK)',
    kotaPenerbit: 'London',
    tahunTerbit: '2019',
    tebalHalaman: '32 Halaman',
    isbn: '9780241370995',
  ),

  Buku(
    judul: 'Intermezzo',
    penulis: 'Sally Rooney',
    kategori: 'Misteri & Thriller Psikologis',
    gambar: 'images/Buku2.jpeg',
    deskripsi:
        'Intermezzo merupakan novel karya Sally Rooney yang mengisahkan kehidupan dua saudara, hubungan mereka, dan perjalanan menghadapi kehilangan serta perubahan hidup.',
    penerbit: 'Shira Media',
    kotaPenerbit: 'Sleman',
    tahunTerbit: '2025',
    tebalHalaman: '521 Halaman',
    isbn: '9786238678099',
  ),

  Buku(
    judul: 'Laut Bercerita',
    penulis: 'Leila S. Chudori',
    kategori: 'Fiksi',
    gambar: 'images/Buku3.jpeg',
    deskripsi:
        'Laut Bercerita adalah novel karya Leila S. Chudori yang mengangkat kisah persahabatan, keluarga, perjuangan, dan kehilangan dalam latar sejarah Indonesia.',
    penerbit: 'Kepustakaan Populer Gramedia (KPG)',
    kotaPenerbit: 'Jakarta',
    tahunTerbit: '2017',
    tebalHalaman: '379 Halaman',
    isbn: '9786024246945',
  ),

  Buku(
    judul: 'Sophie World',
    penulis: 'Jostein Gaarder',
    kategori: 'Fiksi',
    gambar: 'images/Buku4.jpeg',
    deskripsi:
        'Sophie World adalah cerita tentang Sophie yang menerima pesan-pesan misterius dan mulai mengenal berbagai pemikiran serta pertanyaan mendasar tentang kehidupan.',
    penerbit: 'Mizan Pustaka',
    kotaPenerbit: 'Bandung',
    tahunTerbit: '2025',
    tebalHalaman: '800 Halaman',
    isbn: '9786024413668',
  ),

  Buku(
    judul: 'Harry Potter and Sorcerers Stone',
    penulis: 'J.K. Rowling',
    kategori: 'Petualangan Dan Fantasi',
    gambar: 'images/Buku5.jpeg',
    deskripsi:
        'Harry Potter dan Batu Bertuah mengisahkan Harry, anak yatim piatu yang mengetahui dirinya seorang penyihir dan mulai bersekolah di Hogwarts, tempat ia menemukan persahabatan serta rahasia besar di balik sekolah itu.',
    penerbit: 'Arthur A. Levine Books',
    kotaPenerbit: 'New York',
    tahunTerbit: '1998',
    tebalHalaman: '309 Halaman',
    isbn: '9780590353403',
  ),

  Buku(
    judul: 'The Hobbit',
    penulis: 'J.R.R. Tolkien',
    kategori: 'Petualangan Dan Fantasi',
    gambar: 'images/Buku6.jpeg',
    deskripsi:
        'The Hobbit bercerita tentang Bilbo Baggins, hobbit yang suka hidup tenang, tetapi tiba-tiba ikut dalam perjalanan berbahaya bersama sekelompok kurcaci untuk merebut kembali harta karun mereka dari seekor naga.',
    penerbit: 'Gramedia Pustaka Utama',
    kotaPenerbit: 'Jakarta',
    tahunTerbit: '2017',
    tebalHalaman: '346 Halaman',
    isbn: '9789792286335',
  ),

  Buku(
    judul: 'Gone Girl',
    penulis: 'Gillian Flynn',
    kategori: 'Misteri & Thriller Psikologis',
    gambar: 'images/Buku7.jpeg',
    deskripsi:
        'Gone Girl mengisahkan hilangnya seorang istri pada hari ulang tahun pernikahannya. Suaminya menjadi tersangka utama, dan kebenaran tentang pernikahan mereka terungkap sedikit demi sedikit.',
    penerbit: 'Crown Publishing Group',
    kotaPenerbit: 'New York',
    tahunTerbit: '2012',
    tebalHalaman: '419 halaman',
    isbn: 'Belum terverifikasi untuk edisi ini',
  ),

  Buku(
    judul: 'The Silent Patient',
    penulis: 'Alex Michaelides',
    kategori: 'Misteri & Thriller Psikologis',
    gambar: 'images/Buku8.jpeg',
    deskripsi:
        'The Silent Patient bercerita tentang seorang pelukis yang diduga membunuh suaminya lalu berhenti berbicara. Seorang psikoterapis berusaha mengungkap alasan di balik diamnya.',
    penerbit: 'Gramedia Pustaka Utama',
    kotaPenerbit: 'Jakarta',
    tahunTerbit: '2025',
    tebalHalaman: '402 halaman',
    isbn: '9786020633909',
  ),

  Buku(
    judul: 'Bumi Manusia',
    penulis: 'Pramoedya Ananta Toer',
    kategori: 'Fiksi',
    gambar: 'images/Buku9.jpeg',
    deskripsi:
        'Bumi Manusia mengisahkan Minke, pemuda pribumi terpelajar pada masa kolonial Hindia Belanda, yang jatuh cinta dan menghadapi ketidakadilan terhadap bangsanya.',
    penerbit: 'Lentera Dipantara',
    kotaPenerbit: 'Jakarta Timur',
    tahunTerbit: '2025',
    tebalHalaman: '544 halaman',
    isbn: '9786231066329',
  ),
  
  Buku(
    judul: 'The Alchemist',
    penulis: 'Paulo Coelho',
    kategori: 'Fiksi',
    gambar: 'images/Buku10.jpg',
    deskripsi:
        'The Alchemist mengisahkan Santiago, seorang penggembala muda yang melakukan perjalanan untuk mencari harta karun dan menemukan makna kehidupan serta impiannya.',
    penerbit: 'HarperOne',
    kotaPenerbit: 'San Francisco',
    tahunTerbit: '2014',
    tebalHalaman: '208 Halaman',
    isbn: '9780062315007',
  ),

  Buku(
    judul: 'Negeri 5 Menara',
    penulis: 'Ahmad Fuadi',
    kategori: 'Fiksi',
    gambar: 'images/Buku11.jpg',
    deskripsi:
        'Negeri 5 Menara menceritakan perjalanan Alif dan lima sahabatnya di sebuah pesantren. Mereka belajar tentang persahabatan, kedisiplinan, kerja keras, dan keberanian untuk mengejar cita-cita.',
    penerbit: 'Gramedia Pustaka Utama',
    kotaPenerbit: 'Jakarta',
    tahunTerbit: '2009',
    tebalHalaman: '423 Halaman',
    isbn: '9789792248616',
  ),

  Buku(
    judul: 'Laskar Pelangi',
    penulis: 'Andrea Hirata',
    kategori: 'Fiksi',
    gambar: 'images/Buku12.jpg',
    deskripsi:
        'Laskar Pelangi mengisahkan perjuangan sepuluh anak di Belitung yang berusaha mendapatkan pendidikan meskipun menghadapi keterbatasan ekonomi dan fasilitas sekolah.',
    penerbit: 'Bentang Pustaka',
    kotaPenerbit: 'Yogyakarta',
    tahunTerbit: '2005',
    tebalHalaman: '529 Halaman',
    isbn: '9789793062792',
  ),

  Buku(
    judul: 'The Da Vinci Code',
    penulis: 'Dan Brown',
    kategori: 'Misteri & Thriller Psikologis',
    gambar: 'images/Buku13.jpg',
    deskripsi:
        'The Da Vinci Code mengikuti Robert Langdon dan Sophie Neveu dalam mengungkap misteri pembunuhan di Museum Louvre yang berkaitan dengan simbol, karya seni, dan rahasia sejarah.',
    penerbit: 'Doubleday',
    kotaPenerbit: 'New York',
    tahunTerbit: '2003',
    tebalHalaman: '454 Halaman',
    isbn: '9780385504201',
  ),

  Buku(
    judul: 'Percy Jackson and the Lightning Thief',
    penulis: 'Rick Riordan',
    kategori: 'Petualangan Dan Fantasi',
    gambar: 'images/Buku14.jpg',
    deskripsi:
        'Percy Jackson menemukan bahwa dirinya merupakan keturunan dewa Yunani. Ia kemudian menjalani petualangan berbahaya untuk menemukan petir Zeus yang hilang dan mencegah peperangan para dewa.',
    penerbit: 'Miramax Books',
    kotaPenerbit: 'New York',
    tahunTerbit: '2005',
    tebalHalaman: '377 Halaman',
    isbn: '9780786856299',
  ),

  Buku(
    judul: 'The Hunger Games',
    penulis: 'Suzanne Collins',
    kategori: 'Petualangan Dan Fantasi',
    gambar: 'images/Buku15.jpg',
    deskripsi:
        'The Hunger Games mengisahkan Katniss Everdeen yang terpaksa mengikuti kompetisi mematikan di negara Panem. Ia harus bertahan hidup sambil menghadapi ketidakadilan pemerintahan.',
    penerbit: 'Scholastic Press',
    kotaPenerbit: 'New York',
    tahunTerbit: '2008',
    tebalHalaman: '374 Halaman',
    isbn: '9780439023481',
  ),

];

final List<Map<String, dynamic>> daftarKategori = [
  {'nama': 'Semua', 'ikon': Icons.auto_stories},
  {
    'nama': 'Petualangan Dan Fantasi',
    'ikon': Icons.explore_outlined,
  },
  {
    'nama': 'Misteri & Thriller Psikologis',
    'ikon': Icons.psychology_outlined,
  },
  {
    'nama': 'Fiksi',
    'ikon': Icons.menu_book_outlined,
  },
];