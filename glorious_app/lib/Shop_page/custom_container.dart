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
 final Color titlecolor=const Color.fromARGB(255, 78, 78, 78);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
          color: Colors.white,
          height: 480,
          width: 345,
          child: OutlinedButton(style: OutlinedButton.styleFrom(foregroundColor: Color.fromARGB(255, 206, 206, 206)),onPressed: (){}, child: Column(
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
                    style: GoogleFonts.inter(color: titlecolor,
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
                    style: GoogleFonts.inter(color: titlecolor,
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),const SizedBox(width: 224,),
                  
                ],
              )
            ],
          ),),
        ));
  }
}
