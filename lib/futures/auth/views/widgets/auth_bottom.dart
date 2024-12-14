import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/widgets/custom_button.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/gestures.dart';
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
              onPressed: () {
                CustomNavigator.pushNamed(RouteName.contactSupport);
              },
              label: 'Contact Support',
              icon: const Icon(Icons.phone, size: 20),
            ),
            CustomButton(
              onPressed: () {
                CustomNavigator.pushNamed(RouteName.areaManagerScreen);
              },
              label: 'Area Manager',
              icon: const Icon(Icons.person, size: 20),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.015),
        if (isLogin) ...[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: const TextStyle(color: dividerTextColors),
                text: 'By logging in you are accepting our ',
                children: [
                  TextSpan(
                    style: const TextStyle(color: primaryColor),
                    text: 'Terms & Conditions ',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        CustomNavigator.pushNamed(RouteName.privacyPolicy);
                      },
                  ),
                  const TextSpan(text: 'and '),
                  TextSpan(
                    style: const TextStyle(color: primaryColor),
                    text: 'Privacy Policy.',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        CustomNavigator.pushNamed(RouteName.privacyPolicy);
                      },
                  )
                ]),
          ),
          SizedBox(height: size.height * 0.022),
          Text(
            'version 1.3.1',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(color: dividerTextColors)),
          ),
          const SizedBox(height: 16)
        ],
      ],
    );
  }
}
