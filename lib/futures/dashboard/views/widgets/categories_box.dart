import 'package:assessment/common/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesBox extends StatelessWidget {
  const CategoriesBox ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsPath.tires,height: 70,width: 112,),
        Text(
          'Tires',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
              )),
        )
      ],
    );
  }
}
