import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  const Komputer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListKomputers(
            gambar:
                "https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg",
            judul: "Komputer 1",
          ),
          ListKomputers(
            gambar:
                "https://rukminim2.flixcart.com/image/850/1000/xif0q/desktop-computer/3/j/6/0-sailcom-i5-pc-lg-original-imagtmutpgffabxf.jpeg?q=90&crop=false",
            judul: "Komputer 2",
          ),
          ListKomputers(
            gambar:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeYg6wiwkPxpjZObmna7IkqEPDmGekyMfbLg&s",
            judul: "Komputer 3",
          ),
        ],
      ),
    );
  }
}

class ListKomputers extends StatelessWidget {
  const ListKomputers({
    super.key,
    required this.gambar,
    required this.judul,
  });

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
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
