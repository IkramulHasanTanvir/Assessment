import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.label,this.icon, this.isSkip = false});

  final VoidCallback onPressed;
  final String label;
  final Icon? icon;
  final bool isSkip;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          side: const BorderSide(color: borderColor, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
          textStyle:  GoogleFonts.poppins(textStyle: TextStyle( fontSize:isSkip ? 16 : 14,fontWeight: FontWeight.w400)),
          fixedSize: isSkip ?const Size(95, 40) : const Size(155, 40),
        ),
        onPressed: onPressed,
        icon: isSkip ? null : icon,
        label: Text(label,style: GoogleFonts.poppins(fontSize: 13),));
  }
}
