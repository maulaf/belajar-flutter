import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "Smartphone",
              style: TextStyle(fontSize: 30),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Image.network(
              "https://m.media-amazon.com/images/I/71nGqrL5K2L.jpg",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
