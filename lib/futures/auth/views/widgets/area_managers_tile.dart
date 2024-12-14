import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AreaManagersTile extends StatelessWidget {
  const AreaManagersTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.onTap});

  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(image),
          ),
          title: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 16),
            ),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 14, color: cardSubtitleColor),
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: dividerColors.withOpacity(0.6), shape: BoxShape.circle),
            child: const Icon(Icons.phone),
          ),
        ),
        Divider(color: dividerColors.withOpacity(0.2),)
      ],
    );
  }
}
