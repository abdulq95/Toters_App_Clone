import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Deliver/DeliverPage.dart';
import 'HomePage/Home_Toters.dart';
import 'OrderPage/orders.dart';
import 'ProfilePage/TotersProfile.dart';
import 'SearchPage/SearchPage.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  const Bottom_Nav_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Nav_Bar> createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 4;
  List<Widget> AppPages = [
    TotersProfile(),
    OrderPage(),
    delivery(),
    SearchPage(),
    TotersClone(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
            label: 'حساب',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
              size: 30,
            ),
            label: 'طلبات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              size: 30,
            ),
            label: 'المندوب',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            label: ''
                'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 30,
            ),
            label: 'رئيسية',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: TextStyle(
            color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 14),
        unselectedLabelStyle: TextStyle(
            color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 12),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black45,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
