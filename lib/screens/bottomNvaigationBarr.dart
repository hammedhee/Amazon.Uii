import 'package:amazon/screens/bottemtabbar.dart';
import 'package:amazon/screens/homepage.dart';
import 'package:amazon/screens/menupage.dart';
import 'package:amazon/screens/userpage.dart';
import 'package:flutter/material.dart';

class Bottomnvaigationbarr extends StatefulWidget {
  const Bottomnvaigationbarr({super.key});

  @override
  State<Bottomnvaigationbarr> createState() => _BottomnvaigationbarState();
}

class _BottomnvaigationbarState extends State<Bottomnvaigationbarr> {
  var indexForBottomNbar = 0;

  final amazonScreens = [
    const Homepage(),
    const Userpage(),
    const BottomTabBar(),
    const Menupage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: amazonScreens[indexForBottomNbar],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexForBottomNbar,
          onTap: (value) {
            setState(() {
              indexForBottomNbar = value;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(255, 86, 86, 86),
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
          ]),
    );
  }
}
