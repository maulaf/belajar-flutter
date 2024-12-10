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
      backgroundColor: const Color.fromARGB(255, 235, 233, 213),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 13, 27),
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
      body: Container(
          child: Column(
        children: [
          Icon(
            Icons.local_pizza,
            size: 70.0,
            color: Colors.red,
          ),
          Row(
            children: [
              Icon(
                Icons.donut_large,
                size: 70.0,
                color: Colors.red,
              ),
              Icon(
                Icons.donut_large,
                size: 70.0,
                color: Colors.red,
              ),
              Icon(
                Icons.donut_large,
                size: 70.0,
                color: Colors.red,
              ),
            ],
          ),
          Icon(
            Icons.cake,
            size: 70.0,
            color: Colors.red,
          )
        ],
      )),
    );
  }
}
