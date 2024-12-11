import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.backButtonShow = true,
      this.isNotHomeScreen = true,
      required this.title});

  final bool backButtonShow;
  final bool isNotHomeScreen;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0, 4),
                blurRadius: 5)
          ],
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(21),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (backButtonShow)
                  IconButton(
                    onPressed: () {
                      CustomNavigator.pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    title,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            if (isNotHomeScreen) ...[
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  Stack(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_rounded,
                            color: Colors.black,
                          )),
                      const Positioned(
                        right: 13,
                        bottom: 33,
                        child: Icon(
                          Icons.circle,
                          size: 10,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}