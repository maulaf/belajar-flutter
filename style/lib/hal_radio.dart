import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListRadios(
            gambar:
                "https://ae01.alicdn.com/kf/S8cde0d817b4e49fead4ba848eaa2e362z/PRUNUS-J120-Radio-AM-FM-SW-Gaya-Retro-Antik-Klasik-dengan-Bluetooth-5-0-Speaker-Radio.jpg",
            judul: "Radio 1",
          ),
          ListRadios(
            gambar:
                "https://images.philips.com/is/image/philipsconsumer/68f036374ecf4fa0bff8b0d000a73369?",
            judul: "Radio 2",
          ),
          ListRadios(
            gambar:
                "https://images-cdn.ubuy.qa/633fd8d17bf1eb27f26f0d0f-videyas-portable-shortwave-retro-radio.jpg",
            judul: "Phone 3",
          ),
        ],
      ),
    );
  }
}

class ListRadios extends StatelessWidget {
  const ListRadios({
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
