import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int _selectedtabs = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _selectedtabs,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          toolbarHeight: 5,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.teal,
            indicatorColor: Colors.teal,
            unselectedLabelColor: Colors.black.withOpacity(0.5),
            tabs: const [
              Tab(
                child: Text(
                  "الطلبات السابقة",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "الطلبات القادمة",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedtabs = index;
              });
            },
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/order.png",
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "!ليس لديك طلبات سابقة",
                    style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/no_order.png",
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "لا يوجد طلبات قادمة",
                    style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
