import 'package:flutter/material.dart';

import '../../AppData/Data.dart';
import '../HomePage/Home_Toters.dart';
import '../MealPage/Meal.dart';

class FoodPage extends StatefulWidget {
  final String Image;
  final String Name;
  final String Diliver;
  final String Descriotion;
  final String RatingDes;
  final String ResDiscount;
  final String RatingPoints;
  final String Points;
  final String ResComments;
  final String PeopleComment;

  FoodPage({
    required this.Image,
    required this.Name,
    required this.Diliver,
    required this.Descriotion,
    required this.RatingDes,
    required this.ResDiscount,
    required this.Points,
    required this.RatingPoints,
    required this.ResComments,
    required this.PeopleComment,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

int buttonSelected = 1;

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(widget.Image))),
              ),
              Positioned(
                  left: 15,
                  top: 15,
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Icon(
                            Icons.search_rounded,
                            size: 25,
                            color: Colors.black87.withOpacity(0.7),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 25,
                            color: Colors.black87.withOpacity(0.7),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Icon(
                            Icons.share_outlined,
                            size: 25,
                            color: Colors.black87.withOpacity(0.7),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 220),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 25,
                              color: Colors.black87.withOpacity(0.7),
                            )),
                      ),
                    ],
                  )),
              Positioned(
                left: 10,
                bottom: -10,
                child: Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, -3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 5),
                          child: Text(
                            widget.Diliver,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 0),
                          child: Text(
                            "دقيقة",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.Name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.Descriotion,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffe5eefa),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  widget.Points,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.control_point_sharp,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xfff8e8e3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  widget.ResDiscount,
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.discount_outlined,
                                color: Colors.deepOrangeAccent.withOpacity(0.8),
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 160, top: 5),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              Icon(Icons.star_rate, color: Colors.green),
                              Icon(Icons.star_rate, color: Colors.green),
                              Icon(Icons.star_rate, color: Colors.green),
                              Icon(Icons.star_rate, color: Colors.green),
                            ],
                          ),
                          Text(
                            widget.RatingDes,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.RatingPoints,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Colors.green,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.green,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.green,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.green,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.green,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.PeopleComment,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "اقرآ المزيد",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.ResComments,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Colors.grey.withOpacity(0.4),
                      size: 25,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.grey.withOpacity(0.4),
                      size: 25,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.grey.withOpacity(0.4),
                      size: 25,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.grey.withOpacity(0.4),
                      size: 25,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.grey.withOpacity(0.4),
                      size: 25,
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "إكتب تعليق",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.insert_comment_outlined,
                      color: Colors.green.withOpacity(0.4),
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  color: Colors.grey.withOpacity(0.1),
                  thickness: 8,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 3, bottom: 3),
                  child: Text(
                    "شائع",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            MealCard(MealImage3, "برغر لحم", "IQD  8,000",
                                "صمون, قطع كرسبي, جبنة شيدر, خس, مايونيز"),
                            MealCard(
                                MealImage4,
                                "سندويش دامسكينو لحم",
                                "IQD  8,500",
                                "صمون, شرائح لحم, جبنة موزاريلا, خس, مايونيز"),
                            MealCard(MealImage5, "سندويش كرسبي", "IQD  7,000",
                                "صمون, برغر, جبنة شيدر, خس, صلصة خاصة"),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget MealCard(
      String MealImage, String MealName, String MealPrice, MealDescription) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MealPage(
                    M_Image: MealImage,
                    M_Name: MealName,
                    M_Price: MealPrice,
                    M_Descriotion: MealDescription)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, right: 15),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //   color: Colors.grey.withOpacity(0.6),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(MealImage))),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 25, top: 10),
            child: Text(
              MealName,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Text(
              MealPrice,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
