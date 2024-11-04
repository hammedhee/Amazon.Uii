import 'package:amazon/screens/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 96, 231, 249),
                    Color.fromARGB(255, 105, 255, 230),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Amazon.in',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 164, 164, 164),
                          ),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            size: 30,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: const Icon(Icons.qr_code_scanner),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: SizedBox(
                        height: 150,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'asset/home/pay.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amberAccent,
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 159, 159, 159))),
                                  ),
                                  const Text('Amazon pay')
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'asset/home/minitv.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amberAccent,
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 159, 159, 159))),
                                  ),
                                  const Text('Amazon mini tv')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        menuCard('Prime',
                            'asset/home/Screenshot_2024-11-04_094931-removebg-preview.png'),
                        const Gap(1),
                        menuCard('Deals and\n Savings',
                            'asset/home/Screenshot_2024-11-04_095055-removebg-preview.png'),
                        const Gap(1),
                        menuCard('Mobiles&\nElectronics\nDivices',
                            'asset/home/download-removebg-preview.png')
                      ],
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        menuCard('Fashion&\nBeauty',
                            'asset/home/Screenshot_2024-11-04_101932-removebg-preview (1).png'),
                        const Gap(1),
                        menuCard('Groceries &\nPet\nSupplies',
                            'asset/home/Screenshot_2024-11-04_102202-removebg-preview.png'),
                        const Gap(1),
                        menuCard('Health &\nPersonl Care',
                            'asset/home/Screenshot_2024-11-04_103422-removebg-preview.png')
                      ],
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        menuCard('Home furniture',
                            'asset/home/download__2_-removebg-preview.png'),
                        const Gap(1),
                        menuCard(
                            'music,video\nand games', 'asset/home/musics.png'),
                        const Gap(1),
                        menuCard(
                          'Fun Zone',
                          'asset/home/download (3).jpeg',
                        )
                      ],
                    ),
                  ),
                  const Gap(70),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                height: 70,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 38,
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 173, 173, 173)),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      Container(
                        height: 38,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 173, 173, 173)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('Buy again',
                                style: TextStyle(color: Colors.black))),
                      ),
                      Container(
                        height: 38,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 173, 173, 173)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('Account',
                                style: TextStyle(color: Colors.black))),
                      ),
                      Container(
                        height: 38,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 173, 173, 173)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('List',
                                style: TextStyle(color: Colors.black))),
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
