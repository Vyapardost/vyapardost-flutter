import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

import '../../constants/text_themes_constants.dart';

AppBar customAppbar(String text) {
  return AppBar(
    elevation: 1,
    title: Text(
      text,
      style: bodyLargeSemiBold.copyWith(fontWeight: FontWeight.w700),
    ),
    iconTheme: const IconThemeData(
      color: black, //change your color here
    ),
    leadingWidth: 32,
    backgroundColor: Colors.white,
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, statusBarColor: Colors.white),
  );
}
