import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class delivery extends StatefulWidget {
  const delivery({Key? key}) : super(key: key);

  @override
  State<delivery> createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 20),
            margin: EdgeInsets.only(bottom: 35),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.35,
            color: Colors.teal,
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "We deliver anything that fits on a motorbike!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 10),
            child: Text(
              "Request a butler to:",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.12))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deliver your stuff",
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      width: 220,
                      child: Text(
                        "e.g. You forgot your keys at home and need to get them delivered to the office",
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        softWrap: true,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/order.png",
                  height: 90,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.teal,
                  size: 20,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 1),
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.12))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Buy something",
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        "Didn't find what you were looking for at our stores? Our butlers can buy whatever you need from your store of choice.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        softWrap: true,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/order2.png",
                  height: 90,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.teal,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
