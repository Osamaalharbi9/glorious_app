import 'package:flutter/material.dart';
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
                child: OutlinedButton(  style: OutlinedButton.styleFrom(
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
        child: Column(
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
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
