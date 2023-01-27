import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import 'color_constants.dart';

class ThemeConstants {
  static ThemeData appTheme(BuildContext context) {
    return ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: primaryColor,
        primaryColorDark: primaryColor,
        primaryColorLight: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        cardColor: lightGray,
        appBarTheme: AppBarTheme(
            elevation: 1,
            backgroundColor: backgroundColor,
            titleTextStyle: appBarTextTheme,
            iconTheme: const IconThemeData(color: black)),
        colorScheme: ColorScheme.fromSwatch(
          primaryColorDark: primaryColor,
          accentColor: secondaryColor,
          errorColor: secondaryColor,
        ),
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme));
  }
}
