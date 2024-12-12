import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children:
      [Text('Michel Tires',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(fontWeight: FontWeight.w600),
          )),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lorem ipsum dolor sit...',
              style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(fontSize: 12, color: cardSubtitleColor))),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: dividerTextColors)),
              text: 'Stock: ',
            ),
            TextSpan(
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              )),
              text: 'Available',
            ),
          ]))
        ],
      ),
      const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 20,
        color: cardSubtitleColor,
      ),]
    );
  }
}
