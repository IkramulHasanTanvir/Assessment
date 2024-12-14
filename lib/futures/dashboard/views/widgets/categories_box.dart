import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesBox extends StatelessWidget {
  const CategoriesBox ({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,height: 70,width: 112,),
        Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
              )),
        )
      ],
    );
  }
}
