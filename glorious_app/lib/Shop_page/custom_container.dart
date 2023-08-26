import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {super.key,
      required this.title,
      required this.description1,
      required this.description2,
      required this.description3,
      required this.price,
      required this.image});
  final String image;
  final String title;
  final String description1;
  final String description2;
  final String description3;
  final String price;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(12),
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
                  Text(
                    description1,
                    style: GoogleFonts.inter(
                        color: Colors.grey.shade600,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    description2,
                    style: GoogleFonts.inter(
                        color: Colors.grey.shade600,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    description3,
                    style: GoogleFonts.inter(
                        color: Colors.grey.shade600,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              //price
             
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    price,
                    style: GoogleFonts.inter(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(9)),
                    child: Container(
                      color: Colors.black,
                      height: 40,
                      width: 40,
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
