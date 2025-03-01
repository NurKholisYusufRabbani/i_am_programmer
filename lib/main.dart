import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Mengganti warna latar belakang menjadi hitam
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800, // Ganti warna appBar menjadi lebih cerah
        elevation: 2,
        title: const Text(
          'I Am Programmer',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Programmer.png', // Menghilangkan ClipRRect
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Text(
              "Programmer has a rules: ",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), // Teks lebih terang
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade700, // Mengubah warna container menjadi biru gelap
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Text(
                    "1. If it works, don't touch it!",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "2. It’s not a bug, it’s a feature",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
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
