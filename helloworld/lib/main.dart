import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ListView",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("List Smartphones"),
      ),
      body: ListView(
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
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.network(
            gambar,
            width: 200,
          ),
          Text(
            judul,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
