import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});
  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              margin: const EdgeInsets.only(top: 44, right: 20),
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
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Orders',
                style: TextStyle(fontSize: 22),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    listtilss(text: 'Your Orders'),
                    const Divider(thickness: 3),
                    listtilss(text: 'Subscribe & Save')
                  ],
                ),
              ),
            ),
            const Gap(18),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Account Settings',
                style: TextStyle(fontSize: 22),
              ),
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      listtilss(text: 'Login & Security'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Your Addresses'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Content & Devices'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Manage Your Profiles'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Default Purchase Settings'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Manage Prime Membership'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Memberships & Subscriptions'),
                      const Divider(thickness: 3),
                      listtilss(text: 'Help'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile listtilss({required String text}) {
    return ListTile(
      title: Text(text),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
