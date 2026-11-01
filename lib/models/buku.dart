class Buku {
  final String judul;
  final String penulis;
  final String kategori;
  final String gambar;
  final String deskripsi;

  // Informasi detail penerbitan buku
  final String? penerbit;
  final String? kotaPenerbit;
  final String? tahunTerbit;
  final String? tebalHalaman;
  final String? isbn;

  bool dipinjam;
  bool favorit;

  Buku({
    required this.judul,
    required this.penulis,
    required this.kategori,
    required this.gambar,
    required this.deskripsi,

    // Informasi tambahan bersifat opsional
    this.penerbit,
    this.kotaPenerbit,
    this.tahunTerbit,
    this.tebalHalaman,
    this.isbn,

    this.dipinjam = false,
    this.favorit = false,
  });
}