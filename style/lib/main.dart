import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "idrcorner application",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Card & Parsing",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardSaya(icon: Icons.home, warnaIcon: Colors.brown, teks: "Home"),
            CardSaya(
                icon: Icons.favorite, warnaIcon: Colors.pink, teks: "Favorite"),
            CardSaya(icon: Icons.place, warnaIcon: Colors.blue, teks: "Place"),
            CardSaya(
                icon: Icons.settings, warnaIcon: Colors.black, teks: "Setting"),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  const CardSaya({
    super.key,
    required this.icon,
    required this.teks,
    required this.warnaIcon,
  });

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Icon(
          icon,
          size: 50.0,
          color: warnaIcon,
        ),
        Text(
          teks,
          style: TextStyle(fontSize: 10.0, color: Colors.brown),
        )
      ],
    ));
  }
}
