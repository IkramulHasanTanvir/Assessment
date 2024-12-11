import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          const Expanded(
              child: Divider(
                color: dividerColors,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: dividerTextColors,
                    fontSize: 16,
                  )),
            ),
          ),
          const Expanded(
              child: Divider(
                color: dividerColors,
              )),
        ],
      );
  }
}
