import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget forUserPageContaier({
  required String imagePath,
  required String textForImage,
}) {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: 170,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)),
          ),
          Text(textForImage),
        ],
      )
    ],
  );
}

// buy again page

Widget forBuyAgainprodects() {
  return Expanded(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Gap(30),
                      Container(
                        height: 126,
                        width: 86,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 145, 145, 145),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'asset/home/Screenshot 2024-11-01 104301.png'),
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 70),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  const Text('Redmi A1 (Light green 2G...'),
                  const Gap(5),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 113, 103),
                        borderRadius: BorderRadius.circular(3)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(' Blockbuster value day '),
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        '-29%',
                        style: TextStyle(color: Colors.red),
                      ),
                      Gap(6),
                      Text('₹44,995')
                    ],
                  ),
                  const Row(
                    children: [
                      Text('M.R.P: '),
                      Gap(5),
                      Text(
                        '895648',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Get it by'),
                      Gap(5),
                      Text(
                        'Wed,April 19',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Gap(5),
                      Text('FREE ')
                    ],
                  ),
                  const Text(
                    'Delivery by Amazon',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(180, 40),
                          backgroundColor: Colors.amberAccent),
                      onPressed: () {},
                      child: const Text('Add to Cart'))
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
