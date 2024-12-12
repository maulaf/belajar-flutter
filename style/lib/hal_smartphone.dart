import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical, // Mengaktifkan scroll horizontal
        children: [
          ListSmartphones(
            gambar: "https://m.media-amazon.com/images/I/71nGqrL5K2L.jpg",
            judul: "Phone 1",
          ),
          ListSmartphones(
            gambar:
                "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2024/11/28/Tampilan-Galaxy-A16-Gray-1000x667-3078885917.jpg",
            judul: "Phone 2",
          ),
          ListSmartphones(
            gambar:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-0KVhslPcnL28tNSEVGUH1sa6yv4WGx6iXQ&s",
            judul: "Phone 3",
          ),
        ],
      ),
    );
  }
}

class ListSmartphones extends StatelessWidget {
  const ListSmartphones({
    super.key,
    required this.gambar,
    required this.judul,
  });

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          250, // Menentukan lebar item agar tampil lebih rapi dalam scroll horizontal
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.network(
            gambar,
            width: 200,
          ),
          SizedBox(height: 10), // Menambahkan jarak antara gambar dan teks
          Text(
            judul,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
