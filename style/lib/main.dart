import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Navigasi",
      home: new HalamanSatu(),
      routes: <String, WidgetBuilder>{
        '/HalamanSatu': (BuildContext context) => new HalamanSatu(),
        '/HalamanDua': (BuildContext context) => new HalamanDua(),
      }));
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SPEAKER",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanSatu');
          },
          icon: Icon(
            Icons.speaker,
            size: 50,
          ),
        ),
      ),
    );
  }
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MUSIC",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanDua');
          },
          icon: Icon(
            Icons.headphones,
            size: 50,
          ),
        ),
      ),
    );
  }
}
