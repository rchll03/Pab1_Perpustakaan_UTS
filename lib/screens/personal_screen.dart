
import 'package:flutter/material.dart';
import 'package:katalog_perpustakaan/constants/warna.dart';
import 'package:katalog_perpustakaan/data/buku_data.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  String nama = 'Pengguna Katalog Buku';
  String email = 'pengguna@email.com';
  String bio = 'Suka membaca dan menjelajahi dunia melalui buku.';

  void editProfil() {
    final namaController = TextEditingController(text: nama);
    final emailController = TextEditingController(text: email);
    final bioController = TextEditingController(text: bio);
    final formKey = GlobalKey<FormState>();

    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Edit Profil'),
        content: SizedBox(
          width: 400,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: namaController,
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    validator: (value) =>
                        value == null || value.trim().isEmpty
                            ? 'Nama tidak boleh kosong'
                            : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: (value) {
                      final email = value?.trim() ?? '';
                      if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                          .hasMatch(email)) {
                        return 'Masukkan email yang valid';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: bioController,
                    maxLines: 3,
                    maxLength: 150,
                    decoration: const InputDecoration(
                      labelText: 'Bio Singkat',
                      prefixIcon: Icon(Icons.edit_note),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: cokelat,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                setState(() {
                  nama = namaController.text.trim();
                  email = emailController.text.trim();
                  bio = bioController.text.trim();
                });
                Navigator.pop(dialogContext);
              }
            },
            child: const Text('Simpan'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final jumlahPinjaman =
        daftarBuku.where((buku) => buku.dipinjam).length;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: kuning,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person,
              size: 60,
              color: cokelat,
            ),
          ),
          const SizedBox(height: 15),

          Text(
            nama,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: cokelat,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            email,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 12),
          Text(
            bio,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: cokelat,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),

          OutlinedButton.icon(
            onPressed: editProfil,
            icon: const Icon(Icons.edit_outlined),
            label: const Text('Edit Profil'),
            style: OutlinedButton.styleFrom(
              foregroundColor: cokelat,
              side: const BorderSide(color: cokelat),
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 14,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 30),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.bookmark_added_outlined,
                  color: cokelat,
                  size: 35,
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Text(
                    'Total Buku Dipinjam',
                    style: TextStyle(
                      color: cokelat,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  '$jumlahPinjaman',
                  style: const TextStyle(
                    color: cokelat,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            leading: const Icon(
              Icons.info_outline,
              color: cokelat,
            ),
            title: const Text(
              'Tentang Aplikasi',
              style: TextStyle(color: cokelat),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Katalog Buku Digital',
                applicationVersion: '1.0.0',
                applicationIcon: const Icon(
                  Icons.menu_book,
                  color: cokelat,
                  size: 35,
                ),
                children: const [
                  Text(
                    'Aplikasi untuk melihat katalog buku, '
                    'mencari buku, melihat detail, dan '
                    'mengelola peminjaman buku.',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
