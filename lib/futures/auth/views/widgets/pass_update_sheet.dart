import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PassUpdateSheet extends StatelessWidget {
  const PassUpdateSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(
            24,
          ))),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        CustomNavigator.pop();
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.black,
                        size: 32,
                      )),
                ],
              ),
              Stack(
                children: [
                  const Icon(
                    Icons.lock,
                    size: 130,
                    color: lockColor,
                  ),
                  Positioned(
                      bottom: 2,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.check_circle,
                          size: 57,
                          color: checkMarkColors,
                        ),
                      )),
                ],
              ),
              Text(
                'Your password has been updated!',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
              SizedBox(height: size.height * 0.024),
              Text(
                'Thanks, your password has been updated. Please, try to re-login.',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: dividerTextColors),
                ),
              ),
              SizedBox(height: size.height * 0.044),
              ElevatedButton(onPressed: () {
                CustomNavigator.pushAndRemoveAll(RouteName.homeScreen);
              }, child: const Text('OK, Got It')),
            ],
          ),
        ),
      ),
    );
  }
}
