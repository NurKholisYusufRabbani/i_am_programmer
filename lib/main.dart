import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Fungsi utama yang menjalankan aplikasi Flutter
}

// Kelas utama aplikasi Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      home: const HomeScreen(), // Menetapkan HomeScreen sebagai halaman utama
    );
  }
}

// Halaman utama aplikasi
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Warna latar belakang yang lebih soft
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800, // Warna appBar lebih gelap agar selaras
        elevation: 2, // Memberikan efek bayangan kecil pada AppBar
        title: const Text(
          'I Am Programmer', // Judul aplikasi di AppBar
          style: TextStyle(
            color: Colors.white, // Warna teks agar lebih mencolok
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true, // Posisi teks di tengah
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Memposisikan widget di tengah
          children: [
            Image.asset(
              'assets/images/Programmer.png', // Gambar ikon utama
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30), // Jarak antara gambar dan teks
            const Text(
              "Programmer has rules:", // Judul teks aturan programmer
              style: TextStyle(
                color: Colors.white, // Warna teks agar lebih mencolok
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10), // Jarak antara judul teks dan daftar aturan
            Container(
              padding: const EdgeInsets.all(20), // Memberikan padding di dalam container
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade800, // Warna container lebih gelap agar lebih menyatu
                borderRadius: BorderRadius.circular(15), // Membuat sudut container lebih membulat
              ),
              child: const Column(
                children: [
                  Text(
                    "1. If it works, don't touch it!", // Aturan pertama
                    style: TextStyle(
                      color: Colors.white, // Warna teks agar lebih jelas
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center, // Teks rata tengah
                  ),
                  SizedBox(height: 15), // Jarak antar teks aturan
                  Text(
                    "2. It’s not a bug, it’s a feature", // Aturan kedua
                    style: TextStyle(
                      color: Colors.white, // Warna teks agar lebih jelas
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center, // Teks rata tengah
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
