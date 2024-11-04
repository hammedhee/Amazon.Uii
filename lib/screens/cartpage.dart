import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  bool isChecked = false; // State variable to control checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SizedBox(width: 3),
                      Icon(
                        Icons.location_pin,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Deliver to shahin - Thenhippalam ',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(width: 3),
                      Text(
                        '673536',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  Text(
                    '₹1,44,995',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text('EMI Available'),
                  Gap(8),
                  Text(
                    'Details',
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                  Text(
                    'Your order is eligible for FREE Delivery.',
                    style: TextStyle(color: Colors.green),
                  ),
                  Gap(5),
                  Text('Select this'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 34),
              child: Row(
                children: [
                  Text('option at checkout'),
                  Gap(6),
                  Text(
                    'Details',
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            const Gap(16),
            Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Proceed to Buy 2 (Items)'),
              ),
            ),
            const Gap(20),
            // Checkbox widget
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!; // Toggle checkbox value
                    });
                  },
                ),
                const Text('Send as a gift, include custom message'),
                const Gap(12),
              ],
            ),
            const Divider(
              height: 20,
              color: Colors.black,
            ),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                color: const Color.fromARGB(218, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'asset/home/amazon.jpeg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(34),
                      Container(
                        height: 35,
                        width: 125,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(child: const Icon(Icons.delete_outlined)),
                            const Text(
                              '1',
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                            const Icon(Icons.add)
                          ],
                        ),
                      ),
                      const Gap(10),
                      InkWell(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(216, 137, 137, 137)),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              ' See more like this ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 35, 35, 35)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 220,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Apple Iphone 14 pro(128 GB) -',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                              ),
                              const Text(
                                'Deep puprle',
                                style: TextStyle(fontSize: 13),
                              ),
                              const Text(
                                '₹1,44,995',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                              const Text('Eligible for Free Shipping',
                                  style: TextStyle(
                                    fontSize: 13,
                                  )),
                              const Gap(8),
                              const Row(
                                children: [
                                  Text(
                                    'Colour:',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Gap(5),
                                  Text(
                                    'Deep purple',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Size : ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    '128 GB',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              const Text(
                                '₹ 20 Cashback applied . buy\nother items in cart',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.green),
                              ),
                              const Gap(3),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                216, 137, 137, 137)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Center(
                                      child: Text('Save'),
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                216, 137, 137, 137)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Center(
                                      child: Text('Save for later'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
