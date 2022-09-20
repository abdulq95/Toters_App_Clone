import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import '../../AppData/Data.dart';
import '../ResturantPage/Food_Page.dart';
import '../SearchPage/SearchPage.dart';
import '../ProfilePage/TotersProfile.dart';

class TotersClone extends StatefulWidget {
  const TotersClone({Key? key}) : super(key: key);

  @override
  State<TotersClone> createState() => _TotersCloneState();
}

class _TotersCloneState extends State<TotersClone> {
  bool buttonSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 220,
            ),
            child: Icon(
              Icons.notifications_none_rounded,
              color: Colors.grey,
              size: 28,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 2,
                ),
                child: Text(
                  " توصيل إلى ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      "بغداد, العراق",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 5),
          child: Icon(
            Icons.tune_rounded,
            color: Colors.grey,
            size: 28,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "سجل الدخول باستخدام تطبيق توترز واستمتع بمزايا حصرية",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.logout,
                  color: Colors.teal,
                  size: 22,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CarouselImages(
              scaleFactor: 0.8,
              listImages: Craousellist,
              height: 200,
              borderRadius: 20.0,
              cachedNetworkImage: true,
              verticalAlignment: Alignment.bottomCenter,
              onTap: (index) {
                print('On $index');
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryList1(CategoryImages1, "البقالة"),
                      CategoryList1(CategoryImages2, "مطاعم"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryList2(CategoryImages3, "أضف رصيد"),
                      CategoryList2(CategoryImages4, "المندوب"),
                      CategoryList2(CategoryImages5, "متاجر"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 5,
            color: Colors.grey.withOpacity(0.1),
            thickness: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 10),
                    child: Icon(
                      Icons.fiber_new_rounded,
                      color: Color(0xBD12338D),
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10, left: 6),
                    child: Text(
                      "جديد على توترز",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 17),
                    child: Text(
                      "جرب المطاعم الجديدة المميزة مع مجموعة وجبات رائعة",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        RestaurantCard(
                          RestaurantImage,
                          "داماسكينو",
                          "مختصون في تقديم اشهى انواع الاكلات",
                          "30 - 50",
                          "إكسب نقاط",
                          "خصم  %20",
                          "مرتكز على 3347 من التقييمات",
                          "4.7",
                          "...مطعم جميل وخدمة رائعة واكل طيب",
                          "عبد القدوس",
                        ),
                        RestaurantCard(
                          RestaurantImage1,
                          "مندي - المنصور",
                          "نقدم الوجبات العربية اللذيذة والمميزة",
                          "50 - 90",
                          "إكسب نقاط",
                          "خصم  %20",
                          "مرتكز على 18500 من التقييمات",
                          "4.7",
                          "...ممتاز الطعم كلش طيب والنظافة فوول والكعدة مرتبة",
                          "علاوي",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: RestaurantCard(
                            RestaurantImage2,
                            "ففتي كرل",
                            "استمتع بمختاراتنا من بركر اللحم والدجاج المميزة",
                            "30 - 50",
                            "إكسب نقاط",
                            "خصم  %20",
                            "مرتكز على 1482 من التقييمات",
                            "4.8",
                            "...مطعم راقي وعدهم تشكيلة مميزة من البركر",
                            "مروان",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container RestaurantCard(
      String CardImage,
      String CardName,
      String CardDescriotion,
      String DiliverTime,
      String PlusPoints,
      String Discount,
      String RatingNumber,
      String Rating,
      String Comments,
      String CommentedPerson) {
    return Container(
      height: 220,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(
                            Image: CardImage,
                            Name: CardName,
                            Descriotion: CardDescriotion,
                            Diliver: DiliverTime,
                            Points: PlusPoints,
                            ResDiscount: Discount,
                            RatingDes: RatingNumber,
                            RatingPoints: Rating,
                            ResComments: Comments,
                            PeopleComment: CommentedPerson,
                          )));
            },
            child: Column(
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
                                fit: BoxFit.cover,
                                image: AssetImage(CardImage))),
                      ),
                    ),
                    Positioned(
                      bottom: -8,
                      left: 22,
                      child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, -1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "س",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Positioned(
                      left: 20,
                      top: 10,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 220, top: 12),
                  child: Text(
                    CardName,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 230),
                  child: Text(
                    "عراقي  .  \$\$\$",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130, top: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.withOpacity(0.1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "إكسب نقاط",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.control_point_sharp,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withOpacity(0.12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Text(
                                "4.7",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87.withOpacity(0.6)),
                              ),
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container CategoryList1(String CategoryImg1, String CategoryName1) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(3, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            CategoryImg1,
            width: 100,
            height: 70,
          ),
          Text(
            CategoryName1,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Container CategoryList2(String CategoryImg2, String CategoryName2) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(5, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            CategoryImg2,
            width: 100,
            height: 60,
          ),
          Text(
            CategoryName2,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
