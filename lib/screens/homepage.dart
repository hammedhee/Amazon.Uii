import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List bannerImages = [
    'asset/home/am.jpg',
    'asset/home/banner image1.jpg',
    'asset/home/3.-3-Storefronts-1-2048x1152.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [ 
            Color.fromARGB(255, 96, 231, 249),
            Color.fromARGB(255, 105, 255, 230)
          ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              margin: const EdgeInsets.only(
                top: 44,
              ),
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 389,
                  color: const Color.fromARGB(255, 169, 249, 255),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.location_pin,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Deliver to shahin - Thenhippalam ',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '673536',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            'asset/home/Screenshot_2024-10-29_104053-removebg-preview.png'),
                      ),
                      Text('Fresh'),
                    ],
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'asset/home/Screenshot_2024-10-29_122518-removebg-preview.png'),
                        radius: 30,
                        backgroundColor: Colors.white,
                      ),
                      Text('Mobiles'),
                    ],
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            'asset/home/Screenshot_2024-10-29_121416-removebg-preview.png'),
                      ),
                      Text('Fashion')
                    ],
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            'asset/home/Screenshot_2024-10-29_123122-removebg-preview.png'),
                      ),
                      Text('Deals')
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            'asset/home/Screenshot_2024-10-29_123609-removebg-preview.png'),
                      ),
                      Text('Mini TV')
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            'asset/home/amazon-removebg-preview.png'),
                      ),
                      Text('Electronics')
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage('asset/home/amazon.books.jpg'),
                      ),
                      Text('Books')
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider(
                items: bannerImages.map(
                  (e) {
                    return SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        e,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  },
                ).toList(),
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    height: 260,
                    viewportFraction: 1)),
            const SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Image.asset(
                        'asset/home/Screenshot_2024-10-29_234640-removebg-preview.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 200,
                    width: 160,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Image.asset(
                        'asset/home/Screenshot 2024-10-30 001039.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 200,
                    width: 160,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Image.asset(
                      'asset/home/images amazon.jpeg',
                      fit: BoxFit.cover,
                    ),
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
