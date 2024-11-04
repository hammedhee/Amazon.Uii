import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuyagainPagege extends StatefulWidget {
  const BuyagainPagege({super.key});

  @override
  State<BuyagainPagege> createState() => _BuyagainPagegeState();
}

class _BuyagainPagegeState extends State<BuyagainPagege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Buy Again',
                    style: TextStyle(
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 130, 130, 130)),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Filter'), Icon(Icons.arrow_drop_down)],
                    ),
                  )
                ],
              ),
              const Gap(9),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Search all orders',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(Icons.center_focus_strong),
                  ),
                ),
              ),
              const Gap(15),

              // Use SingleChildScrollView to enable horizontal scrolling for rows of product cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildProductCard(
                      imagePath: 'asset/home/mobli foe buy againng page.jpeg',
                      title: 'Samsung Galaxy',
                      discount: '-28%',
                      price: '₹6000',
                      mrp: '₹8000',
                      deliveryDate: 'Mon, April 24',
                    ),
                    const Gap(10),
                    buildProductCard(
                      imagePath: 'asset/home/redmi.jpeg',
                      title: 'Redmi 13 note 13 pro',
                      discount: '-28%',
                      price: '₹10000',
                      mrp: '₹14000',
                      deliveryDate: 'Wed, Feb 24',
                    ),
                  ],
                ),
              ),
              const Gap(10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildProductCard(
                      imagePath: 'asset/home/i phone.jpeg',
                      title: 'iPhone 15 (Black)',
                      discount: '-28%',
                      price: '₹69000',
                      mrp: '₹79000',
                      deliveryDate: 'Mon, March 25',
                    ),
                    const Gap(10),
                    buildProductCard(
                      imagePath: 'asset/home/samsung.jpeg',
                      title: 'Samsung S23 Ultra 5G',
                      discount: '-28%',
                      price: '₹110000',
                      mrp: '₹150000',
                      deliveryDate: 'Mon, May 24',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductCard({
    required String imagePath,
    required String title,
    required String discount,
    required String price,
    required String mrp,
    required String deliveryDate,
  }) {
    return Container(
      height: 350,
      width: 190,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Text(
                discount,
                style: const TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              ),
              const Gap(3),
              Text(price)
            ],
          ),
          Row(
            children: [
              const Text('M.R.P: '),
              Text(
                mrp,
                style: const TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Get it by '),
              Text(
                deliveryDate,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            children: [Text('Delivered over ₹499 ')],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {},
              child: const Text('Add to cart'))
        ],
      ),
    );
  }
}
