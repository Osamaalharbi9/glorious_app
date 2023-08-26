// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:glorious_app/Shop_page/custom_container.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ),
      ),
      //drawer
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 33, 33, 33),
        child: Column(
          children: [
            Flexible(child: Container()),
            //image
            Flexible(
              flex: 2,
              child: Image.asset(
                'assets/images/Comp 10 2.png',
                color: Colors.white,
              ),
            )
            //divader
            ,
            const Flexible(
              flex: 1,
              child: Divider(
                color: Colors.grey,
              ),
            )
            //settings
            ,
            Flexible(
              flex: 1,
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey[900],
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 33, 33, 33))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('Profile',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16))
                      ],
                    )),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey[900],
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 33, 33, 33))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('Settings',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16))
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 245, 245, 245),
              Color.fromARGB(255, 205, 205, 205)
            ])),
        //end of drawer
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)))),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Text('Most popular',
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24)),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  const CustomContainer(
                      title: 'GMMK 2',
                      description:
                          'The GMMK 2 is the ultimate gaming keyboard at the best value possible. It combines premium-grade components and striking aesthetics for next level gameplay.',
                      price: '90\$',
                      image:
                          'assets/images/AnyConv.com__glorious_keyboards_gmmk_2_white_65_ansi_2x.png'),
                  const SizedBox(
                    width: 37,
                  ),
                  CustomContainer(
                      title: 'title',
                      description: 'description1',
                      price: 'price',
                      image: 'image'),
                  const SizedBox(
                    width: 37,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                          color: Colors.white, height: 480, width: 345)),
                  const SizedBox(
                    width: 37,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.white,
              //thickness: 0.1,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GNav(
                          color: const Color.fromARGB(255, 162, 162, 162),
                          tabActiveBorder: Border.all(color: Colors.white),
                          tabBackgroundColor: Colors.grey.shade100,
                          mainAxisAlignment: MainAxisAlignment.center,
                          tabBorderRadius: 22,
                          //color: Colors.grey,

                          tabs: [
                            GButton(
                              icon: Icons.home_rounded,
                              text: 'Shop',
                              onPressed: () {},
                            ),
                            GButton(
                              //activeBorder: Border.all(color: Colors.black),
                              icon: Icons.shopping_bag_rounded,
                              text: 'Cart',
                              onPressed: () {},
                            )
                          ]),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
