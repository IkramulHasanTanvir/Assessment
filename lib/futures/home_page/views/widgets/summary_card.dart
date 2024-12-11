import 'package:assessment/common/constants.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard(
      {super.key, required this.title, this.suffixIcon, this.suffixText, this.onTap});

  final String title;
  final IconData? suffixIcon;
  final String? suffixText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor, width: 1),
            borderRadius: BorderRadius.circular(10),
            color: cardColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(AssetsPath.icon, height: 24),
                  const SizedBox(width: 24),
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              if (suffixIcon != null)
                Icon(
                  suffixIcon,
                  size: 16,
                  color: primaryColor,
                ),
              if (suffixText != null)
                Text(
                  suffixText!,
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 16)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
