import 'package:amazon/screens/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Buyagainpage extends StatefulWidget {
  const Buyagainpage({super.key});

  @override
  State<Buyagainpage> createState() => _BuyagainpageState();
}

class _BuyagainpageState extends State<Buyagainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Buy again',
                    style: TextStyle(fontSize: 23),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Filters'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search all orders',
                    prefixIcon: Icon(Icons.search_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Gap(15),
            Container(
              color: const Color.fromARGB(255, 190, 190, 190),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        forBuyAgainprodects(),
                        forBuyAgainprodects(),
                      ],
                    ),
                    Gap(9),
                    Row(
                      children: [
                        forBuyAgainprodects(),
                        forBuyAgainprodects(),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
