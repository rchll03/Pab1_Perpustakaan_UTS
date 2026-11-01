import 'package:flutter_test/flutter_test.dart';
import 'package:katalog_perpustakaan/main.dart';

void main() {
  testWidgets('Aplikasi menampilkan halaman utama dan navigasi', (tester) async {
    await tester.pumpWidget(const KatalogBukuApp());

    expect(find.text('ENJOY READING'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Borrow'), findsOneWidget);
    expect(find.text('Profil Saya'), findsOneWidget);
    expect(find.text('Favorite'), findsOneWidget);
  });

  testWidgets('Menu Book List membuka katalog dan detail buku', (tester) async {
    await tester.pumpWidget(const KatalogBukuApp());

    await tester.tap(find.text('Book List'));
    await tester.pumpAndSettle();
    expect(find.text('DAFTAR BUKU'), findsOneWidget);

    final judulBuku = find.text('Jack and the Beanstalk');
    await tester.ensureVisible(judulBuku);
    await tester.tap(judulBuku);
    await tester.pumpAndSettle();
    expect(find.text('Detail Buku'), findsOneWidget);
    expect(find.text('Deskripsi Buku'), findsOneWidget);
  });

  testWidgets('Navigasi Borrow dapat dibuka', (tester) async {
    await tester.pumpWidget(const KatalogBukuApp());

    await tester.tap(find.text('Borrow'));
    await tester.pumpAndSettle();
    expect(find.text('BUKU PINJAMAN'), findsOneWidget);
    expect(find.text('Belum ada buku yang dipinjam.'), findsOneWidget);
  });
}
