import 'package:amazon/screens/buyagainpage.dart';
import 'package:amazon/screens/cartpage.dart';
import 'package:amazon/screens/menupage.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            height: 150,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 96, 231, 249),
                  Color.fromARGB(255, 105, 255, 230),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                margin: const EdgeInsets.only(top: 44),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Amazon.in',
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: const Icon(Icons.qr_code_scanner),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Cart'),
              Tab(text: 'Buy Again'),
              Tab(text: 'Keep Shopping For'),
            ],
            labelColor: Colors.black,
            indicatorColor: Colors.black,
          ),
        ),
        body: const TabBarView(
          children: [
            Cartpage(),
            Buyagainpage(),
            Menupage(),
          ],
        ),
      ),
    );
  }
}
