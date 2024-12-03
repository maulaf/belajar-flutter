import 'package:flutter/material.dart';

class ManuList extends StatefulWidget {
  const ManuList({super.key});

  @override
  State<ManuList> createState() => _ManuListState();
}

class _ManuListState extends State<ManuList> {
  List<String> listGambar = [
    'assets/images/food.jpg',
    'assets/images/food1.jpg',
    'assets/images/food2.jpg',
    'assets/images/food3.jpg',
    'assets/images/food4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: ListView.builder(
        itemCount: listGambar.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              listGambar[index],
              fit: BoxFit.cover,
            )),
      )),
    ));
  }
}
