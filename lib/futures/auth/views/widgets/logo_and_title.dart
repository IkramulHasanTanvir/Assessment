import 'package:assessment/common/constants.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            AssetsPath.appLogo,
            height: 40,
          ),
        ),
        const SizedBox(height: 44),
        Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 28)),
        ),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 14, color: authSubtitleColor)),
        ),
      ],
    );
  }
}
