import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pertamaku', // Judul untuk sistem/task manager
      // Ganti properti 'home' dengan Widget Scaffold
      home: Scaffold(
        // Widget Scaffold menyediakan struktur dasar (Appbar, Body, dll.)
        appBar: AppBar(
          title: Text('Aplikasi Dasar Flutter'), // Teks di Toolbar atas
          backgroundColor: Colors.blueGrey,      // Warna Toolbar
        ),
        // Properti 'body' adalah tempat Anda meletakkan konten utama
        body: Center(
          child: Text(
            'Selamat! Anda sudah berhasil coding dari nol.',
            style: TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}