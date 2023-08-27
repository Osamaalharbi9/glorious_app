import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.title,
      required this.description,
      required this.price,
      required this.image});
  final String image;
  final String title;
  final String description;
  final String price;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
          color: Colors.white,
          height: 480,
          width: 345,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //image
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image(image: AssetImage(image)),
              )
              //title

              ,
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.inter(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      description,
                      style: GoogleFonts.inter(
                          color: Colors.grey.shade600,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(
                    price,
                    style: GoogleFonts.inter(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),const SizedBox(width: 224,),
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(9)),
                    child: Container(
                      color: const Color.fromARGB(255, 45, 45, 45),
                      height: 60,
                      width: 60,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Center(
                              child: Text(
                            '+',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ))),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
