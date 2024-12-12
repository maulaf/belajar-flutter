import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListHeadsets(
            gambar:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoKI0t9eqlse6cG-CdGXuBxwBrP4493r0-g&s",
            judul: "Headphones 1",
          ),
          ListHeadsets(
            gambar:
                "https://www.energysistem.com/cdnassets/products/45305/principal_2000.jpg",
            judul: "Headphones 2",
          ),
          ListHeadsets(
            gambar:
                "https://wafuu.com/cdn/shop/products/sony-wh-1000xm4-wireless-premium-noise-canceling-overhead-headphones-with-mic-for-phone-call-and-alexa-voice-control-silver-350482.jpg?v=1695256804",
            judul: "Headphones 3",
          ),
        ],
      ),
    );
  }
}

class ListHeadsets extends StatelessWidget {
  const ListHeadsets({
    super.key,
    required this.gambar,
    required this.judul,
  });

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(gambar: gambar, judul: judul),
          ),
        );
      },
      child: Container(
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
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.gambar, required this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              gambar,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              judul,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
