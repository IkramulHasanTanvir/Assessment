import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardButton extends StatelessWidget {
  const CardButton(
      {super.key,
      required this.title,
      this.isRedColor = false,
      required this.onTap});

  final String title;
  final bool isRedColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 59,
      decoration: BoxDecoration(
        color: isRedColor ? primaryColor : borderColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            textStyle:
                TextStyle(color: isRedColor ? Colors.white : Colors.black)),
      ),
    );
  }
}
