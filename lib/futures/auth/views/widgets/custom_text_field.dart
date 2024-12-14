import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.title, required this.formField});

  final String title;
  final TextFormField formField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )),
        ),
        const SizedBox(height: 8),
        formField,
        const SizedBox(height: 8),
      ],
    );
  }
}
