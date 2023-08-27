import 'package:flutter/material.dart';
import 'package:glorious_app/Shop_page/shop_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: Myapp(),) );

//statelesswidget
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 245, 245, 245),
                Color.fromARGB(255, 205, 205, 205)
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(flex: 1, child: Container()),
                Flexible(
                  flex: 1,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Image.asset(
                      'assets/images/Comp 10 2.png',
                      height: 225,
                      width: 225,
                    ),
                    //color: Colors.black,
                  ),
                ),
                Flexible(
                  flex: 1,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: SizedBox.expand(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Glorious',
                            style: GoogleFonts.inter(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Best way to buy and find Glorious',
                            style: GoogleFonts.inter(
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Accessories.',
                            style: GoogleFonts.inter(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                height: 69,
                                width: 262,
                                color: Colors.black,
                                child: OutlinedButton(
                                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShopPage()));},
                                    child: Text(
                                      'Start Now',
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    )),
                              ))
                        ],
                      ),
                    ),
          
                    //color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
       );
    
  }
}
