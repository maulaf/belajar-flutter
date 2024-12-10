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
    return new Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 217, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 52, 226),
        leading: Icon(
          Icons.home,
          color: const Color.fromARGB(255, 240, 241, 245),
        ),
        title: Center(
          child: Text(
            "IDR Corner",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
