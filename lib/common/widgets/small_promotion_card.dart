import 'package:assessment/common/widgets/discount_background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallPromotionCard extends StatelessWidget {
  const SmallPromotionCard(
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
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 370),
        child: DiscountBackground(
            isBigBackground: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 188,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 28.0),
                          child: Text(subtitle,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black.withOpacity(0.4),
                          ),
                          child: Text(
                            'Learn More',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Image.asset(
                      image,
                      height: 99,
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
