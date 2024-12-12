import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorSchemeSeed: primaryColor,
    textTheme: _textTheme(),
    elevatedButtonTheme: _elevatedButtonThemeData(),
    textButtonTheme: _textButtonThemeData(),
    inputDecorationTheme: _inputDecorationTheme());




TextButtonThemeData _textButtonThemeData() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.blue,
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        color: Colors.blue,
        fontSize: 14,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w600,
      )),
    ),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    suffixIconColor: dividerTextColors,
    hintStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
    )),
    border: _outlineInputBorder(),
    enabledBorder: _enabledBorder(),
    focusedBorder: _outlineInputBorder(),
    errorBorder: _outlineInputBorder(),
  );
}

OutlineInputBorder _outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: primaryColor),
  );
}

OutlineInputBorder _enabledBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide:  BorderSide(color: dividerTextColors.withOpacity(0.3)),
  );
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        fixedSize: const Size(double.maxFinite, 60),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
  );
}

TextTheme _textTheme() {
  return const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  );
}
