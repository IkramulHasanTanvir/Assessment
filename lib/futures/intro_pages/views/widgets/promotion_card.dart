import 'package:assessment/common/widgets/discount_background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27.0),
      child: DiscountBackground(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54,vertical: 44),
            child: Column(
                    children: [
            Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(subtitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
            ),
            Image.asset(image, width: 282, height: 176)
                    ],
                  ),
          )),
    );
  }
}
