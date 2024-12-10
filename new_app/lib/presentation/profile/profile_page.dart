import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 220, 220),
      body: SafeArea(
          child: Container(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            height: 250,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset.fromDirection(90))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 160,
                  color: Colors.white10,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/hirono.jpg'))),
                      ),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Fetty Athiyatul Maula",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "SQA Automation",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Flexible(
                                child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 200, 225, 238),
                                  borderRadius: BorderRadius.circular(8)),
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InformationRating(
                                    subTitle: "Articles",
                                    value: "100",
                                  ),
                                  InformationRating(
                                    subTitle: "Followers",
                                    value: "230",
                                  ),
                                  InformationRating(
                                    subTitle: "Rating",
                                    value: "8.7",
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text("Chat"))),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {},
                                // style: ElevatedButton.styleFrom(
                                //   backgroundColor:
                                //       Colors.lightBlue, // Warna biru
                                // ),
                                child: Text("Follow")))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class InformationRating extends StatelessWidget {
  const InformationRating({
    super.key,
    required this.subTitle,
    required this.value,
  });

  final String subTitle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black54),
        ),
        Text(
          value,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
