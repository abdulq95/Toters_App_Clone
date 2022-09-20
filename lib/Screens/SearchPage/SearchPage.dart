import 'package:flutter/material.dart';

import '../HomePage/Home_Toters.dart';
import '../ProfilePage/TotersProfile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int buttonSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              "البحث عن متجر او صنف",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(0.4),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                              size: 25,
                            ),
                          )
                        ],
                      )),
                ))),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.teal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 1000,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/order.png"))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Order Anything!",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "New on Toters! If it fits on a",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("motorbike we can deliver it.",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white.withOpacity(0.6),
                  ),
                )
              ],
            ),
          ),
          stores("assets/craousel_images/to1.jpg", "Happy Hour",
              "New on Toters! If it fits on a", "28 Stores"),
          stores("assets/craousel_images/to2.png", "Happy Hour",
              "New on Toters! If it fits on a", "28 Stores"),
          stores("assets/craousel_images/to3.jpeg", "Happy Hour",
              "New on Toters! If it fits on a", "28 Stores"),
          stores("assets/craousel_images/to1.jpg", "Happy Hour",
              "New on Toters! If it fits on a", "28 Stores"),
          stores("assets/craousel_images/to2.png", "Happy Hour",
              "New on Toters! If it fits on a", "28 Stores"),
          stores("assets/craousel_images/to3.jpeg", "Happy Hour",
              "New on Toters! If it fits on a", "28 Stores"),
        ],
      ),
    );
  }

  Row stores(
    String image,
    String name,
    String cap,
    String number,
  ) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          height: 180,
          width: 180,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(image))),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(
                cap,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(number,
                  style: TextStyle(fontSize: 16, color: Colors.teal)),
            ),
          ],
        ),
      ],
    );
  }
}
