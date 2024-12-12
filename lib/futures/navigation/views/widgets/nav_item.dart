import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavItem extends StatelessWidget {
  const NavItem(
      {super.key,
      this.icon,
      required this.label,
      required this.isIndicator,
      required this.onTap});

  final String? icon;
  final String label;
  final bool isIndicator;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(left: 8, bottom: 4, right: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: isIndicator ? navIndicatorColor : Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                icon != null
                    ? Image.asset(icon!,
                        height: size.width > 400 ? 24 : 18, width: 24)
                    : SizedBox(height: size.width > 400 ? 27 : 26, width: 24),
                Text(
                  label,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: size.width > 400 ? 9 : 8,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
