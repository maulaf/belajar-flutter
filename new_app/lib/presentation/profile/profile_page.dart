import 'package:flutter/material.dart';
import 'package:new_app/presentation/profile/widgets/card_profile_information_widget.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndSubtitle(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 7,
                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 230,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(20),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://picsum.photos/200/300"))),
                                    child: Image.network(
                                      "https://picsum.photos/200/300",
                                      fit: BoxFit.cover,
                                    ))),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nature",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Flexible(
                                          child: Text(
                                        "Let us plant more trees from this year",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ))
                                    ],
                                  ),
                                )),
                          ],
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notable Works",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Based on the popularity of articles",
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ],
    );
  }
}
