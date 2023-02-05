import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'color_constants.dart';

TextStyle heading3Bold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 7.0.sp : 24,
  fontWeight: FontWeight.w700,
  color: textColor,
);

TextStyle heading4Bold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 6.0.sp : 20,
  fontWeight: FontWeight.w700,
  color: textColor,
);

TextStyle bodyLargeRegular = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 16,
  fontWeight: FontWeight.w400,
  color: textColor,
);

TextStyle bodyLargeSemiBold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 16,
  fontWeight: FontWeight.w600,
  color: textColor,
);

TextStyle bodySmallRegular = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 4.5.sp : 14,
  fontWeight: FontWeight.w400,
  color: textColor,
);

TextStyle bodySmallSemiBold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 4.5.sp : 14,
  fontWeight: FontWeight.w600,
  color: textColor,
);

TextStyle captionLargeRegular = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 4.0.sp : 12,
  fontWeight: FontWeight.w400,
  color: textColor,
);

TextStyle captionLargeSemiBold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 4.0.sp : 12,
  fontWeight: FontWeight.w600,
  color: textColor,
);

TextStyle captionSmallRegular = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 3.5.sp : 11.sp,
  fontWeight: FontWeight.w400,
  color: textColor,
);

TextStyle captionSmallSemiBold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 3.5.sp : 11.sp,
  fontWeight: FontWeight.w600,
  color: textColor,
);

TextStyle footerRegular = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 3.5.sp : 10.sp,
  fontWeight: FontWeight.w400,
  color: textColor,
);

TextStyle footerSemiBold = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 3.5.sp : 10.sp,
  fontWeight: FontWeight.w600,
  color: textColor,
);

TextStyle? appBarTextTheme = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 16,
  fontWeight: FontWeight.w700,
  color: textColor,
);

TextStyle? buttonTextTheme = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 16,
  fontWeight: FontWeight.w500,
  color: white,
);

TextStyle? buttonOutlineTextTheme = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 16,
  fontWeight: FontWeight.w500,
  color: textColor,
);

TextStyle? buttonDisableTextTheme = TextStyle(
  fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 16,
  fontWeight: FontWeight.w500,
  color: grayDark,
);

TextStyle textFieldBody = bodySmallRegular;

TextStyle textFieldHintBody = bodySmallRegular.copyWith(color: lightBlack);

TextStyle textFieldLabelBody = bodySmallRegular.copyWith(color: lightBlack);

TextStyle textBoxStyle = bodyLargeSemiBold;

TextStyle textBoxEnableStyle = bodyLargeSemiBold.copyWith(color: white);

TextStyle tabTextStyle = bodyLargeSemiBold.copyWith(color: primaryColor);

TextStyle tabTextEnableStyle = bodyLargeSemiBold.copyWith(color: white);

TextStyle logoTextStyle = heading3Bold.copyWith(color: primaryColor);

TextStyle onboardingTextStyle = heading3Bold.copyWith(color: primaryColor);

TextStyle onboardingSmallTextStyle = heading4Bold.copyWith(color: primaryColor);
