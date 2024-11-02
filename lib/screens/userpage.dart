import 'package:amazon/screens/orderpage.dart';
import 'package:amazon/screens/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(192, 132, 228, 255),
                  Color.fromARGB(195, 95, 244, 197)
                ])),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 120,
                        child: Image.asset(
                          'asset/home/294695_amazon_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            size: 30,
                          ),
                          Gap(15),
                          Icon(
                            Icons.search_rounded,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Hello,',
                              style: TextStyle(fontSize: 21),
                            ),
                            Gap(10),
                            Text(
                              'irfan',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('asset/home/avatar for amazon.jpeg'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) {
                              return Orderpage();
                            }));
                          },
                          child: Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 243, 243, 243),
                                border: Border.all(color: Colors.black)),
                            child: const Center(child: Text('Your Orders')),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 243, 243),
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(child: Text('Buy Again')),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 243, 243, 243),
                              border: Border.all(color: Colors.black)),
                          child: const Center(child: Text('Your Account')),
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 243, 243),
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(child: Text('Your Wish List')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Gap(10),
                        Text(
                          'Your Orders',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 170,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('asset/home/images.jpeg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: const Color.fromARGB(0, 0, 0, 0)),
                          ),
                        ),
                        const Gap(15),
                        Container(
                          height: 160,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'asset/home/amazon prodect for userpage.jpeg'),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        const Gap(15),
                        Container(
                          height: 160,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            image: const DecorationImage(
                                image: AssetImage('asset/home/user pg.jpeg'),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        const Gap(15),
                        Container(
                          height: 160,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'asset/home/amazon predect for userpage.jpeg'),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(8),
              Container(
                height: 8,
                width: double.infinity,
                color: const Color.fromARGB(255, 209, 209, 209),
              ),
              const Gap(8),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 8),
                child: Row(
                  children: [
                    Text(
                      'Keep Shopping For',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Gap(50),
                    Text(
                      'Edit',
                      style: TextStyle(color: Colors.green),
                    ),
                    Gap(10),
                    Text(
                      '|',
                      style: TextStyle(fontSize: 18),
                    ),
                    Gap(10),
                    Text(
                      'Browsing history',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  forUserPageContaier(
                    imagePath: 'asset/home/userpage prodects.jpeg',
                    textForImage: 'Sports shoes\n2viwed',
                  ),
                  forUserPageContaier(
                    imagePath: 'asset/home/shoes.jpeg',
                    textForImage: 'Adidas Forum Low \n4 viwed',
                  ),
                ],
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  forUserPageContaier(
                    imagePath: 'asset/home/forum shoes.jpeg',
                    textForImage: 'shoes\n3viwed',
                  ),
                  forUserPageContaier(
                    imagePath: 'asset/home/red shose.jpg',
                    textForImage: 'converse shoes \n54 viwed',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
