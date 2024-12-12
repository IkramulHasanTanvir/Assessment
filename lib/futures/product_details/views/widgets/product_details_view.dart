import 'package:assessment/common/constants.dart';
import 'package:assessment/futures/dashboard/views/widgets/card_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView(
      {super.key,
      required this.title,
      required this.category,
      required this.subCategory,
      required this.reviews,
      required this.stock,
      required this.onTap,
      required this.details});

  final String title;
  final String category;
  final String subCategory;
  final String details;
  final String reviews;
  final String stock;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 255,
      child: Stack(
        children: [
          RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
              text: '$title\n',
              children: [
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.8)),
                  text: '$category\n',
                ),
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.8)),
                  text: '$subCategory\n',
                ),
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.8)),
                  text: '$details\n',
                ),
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
                  text: '  4.5 ',
                ),
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: dividerTextColors,
                          height: 2)),
                  text: '$reviews\n',
                ),
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: dividerTextColors)),
                  text: 'Stock: ',
                ),
                TextSpan(
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                          height: 3)),
                  text: '$stock\n',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CardButton(
              title: 'Add',
              onTap: onTap,
              isRedColor: true,
            ),
          ),
        ],
      ),
    );
  }
}
