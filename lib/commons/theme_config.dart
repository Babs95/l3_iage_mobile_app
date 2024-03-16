import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:l3iage_app/commons/constants_color.dart';

ThemeData ligthThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kWhiteColor,
    scaffoldBackgroundColor: kWhiteColor,
    appBarTheme: const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: kWhiteColor,
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
      iconTheme: IconThemeData(color: kWhiteColor)
    ),
    textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)
      .apply(
      displayColor: kDarkColor,
      bodyColor: kDarkColor,

    )
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kWhiteColor,
      scaffoldBackgroundColor: kDarkColor,
      appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: kWhiteColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
          iconTheme: IconThemeData(color: kWhiteColor)
      ),
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)
          .apply(
        displayColor: kWhiteColor,
        bodyColor: kWhiteColor,

      )
  );
}