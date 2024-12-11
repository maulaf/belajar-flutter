import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "Radio",
              style: TextStyle(fontSize: 30),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Image.asset(
              "img/radio.jpg",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
