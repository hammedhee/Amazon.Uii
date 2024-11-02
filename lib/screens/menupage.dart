import 'package:flutter/material.dart';

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
                margin: EdgeInsets.only(top: 5),
                child: Padding(
                  padding: const EdgeInsets.all(15),
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
              Card(
                elevation: 5,
                child: Container(
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
                                  image: DecorationImage(
                                      image: AssetImage('asset/home/pay.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amberAccent,
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 159, 159, 159))),
                            ),
                            Text('Amazon pay')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 90,
                              width: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('asset/home/minitv.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amberAccent,
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 159, 159, 159))),
                            ),
                            Text('Amazon mini tv')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Card(
                    child: Text(''),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
