import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, this.viewAllShow = true});

  final String title;
  final bool viewAllShow;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600)),
        ),
        if(viewAllShow)
        Text(
          'View All',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: viewAllColor,
                  fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
