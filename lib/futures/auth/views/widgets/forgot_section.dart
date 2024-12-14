import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotSection extends StatefulWidget {
  const ForgotSection({super.key});

  @override
  State<ForgotSection> createState() => _ForgotSectionState();
}

class _ForgotSectionState extends State<ForgotSection> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: checkboxColor,
              value: isCheck,
              onChanged: (bool? value) {
                isCheck = value!;
                setState(() {});
              },
            ),
            Text(
              'Remember me',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            CustomNavigator.pushNamed(RouteName.forgotPassScreen);
          },
          child: const Text('Forgot Password'),
        )
      ],
    );
  }
}
