import 'package:assessment/common/constants.dart';
import 'package:assessment/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthBottom extends StatelessWidget {
  const AuthBottom({super.key, this.isLogin = false});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              onPressed: () {},
              label: 'Contact Support',
              icon: const Icon(Icons.phone, size: 20),
            ),
            CustomButton(
              onPressed: () {},
              label: 'Area Manager',
              icon: const Icon(Icons.person, size: 20),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.032),
        if (isLogin) ...[
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                style: TextStyle(color: dividerTextColors),
                text: 'By logging in you are accepting our ',
                children: [
                  TextSpan(
                      style: TextStyle(color: primaryColor),
                      text: 'Terms & Conditions '),
                  TextSpan(text: 'and '),
                  TextSpan(
                    style: TextStyle(color: primaryColor),
                    text: 'Privacy Policy.',
                  )
                ]),
          ),
          SizedBox(height: size.height * 0.032),
          Text(
            'version 1.3.1',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(color: dividerTextColors)),
          ),
        ],
      ],
    );
  }
}
