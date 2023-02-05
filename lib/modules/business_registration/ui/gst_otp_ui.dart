import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../../base/utils/size_utils.dart';

class GSTOtpUI extends StatelessWidget {
  GSTOtpUI({Key? key}) : super(key: key);

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(),
          size10H,
          subtitleText(),
          size26H,
          enterMobileField(context),
          size26H,
          resendText(),
          size40H,
          const CustomButton(
            text: 'Submit OTP',
          ),
          size6H,
          instantVerificationText(),
          size46H,
          orText(),
          size46H,
          const CustomButton(
            text: 'Upload GST Certificate',
            icon: Icons.upload,
            fillColor: black,
          ),
          size6H,
          verificationText()
        ],
      ),
    );
  }

  Widget orText() {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: primaryColor,
          ),
        ),
        Text(
          '    or   ',
          style: bodyLargeSemiBold.copyWith(color: primaryColor),
        ),
        const Expanded(child: Divider(color: primaryColor))
      ],
    );
  }

  Widget verificationText() {
    return Center(
      child: Text(
        'Verification takes 1 to 2 days',
        style: captionLargeSemiBold.copyWith(color: secondaryColor),
      ),
    );
  }

  Widget instantVerificationText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/green_bolt.svg'),
        size6W,
        Text(
          'Instant Verification',
          style: captionLargeSemiBold.copyWith(color: primaryColor),
        )
      ],
    );
  }

  Widget resendText() {
    return Text(
      'Resent OTP (30s)',
      style: bodySmallSemiBold.copyWith(color: grayDark),
    );
  }

  Widget titleText() {
    return Row(
      children: [
        Text(
          'Verify GST',
          style: heading4Bold.copyWith(color: primaryColor),
        ),
        Text('OTP', style: heading4Bold.copyWith(color: secondaryColor)),
        size6W,
        Text(
          '- Sent to 9733464567',
          style: bodySmallSemiBold,
        )
      ],
    );
  }

  Widget subtitleText() {
    return Row(
      children: [
        Text(
          'GST - 27AAICV0969J1ZS',
          style: bodySmallSemiBold,
        ),
        size6W,
        Text(
          'Change',
          style: bodySmallSemiBold.copyWith(color: primaryColor),
        ),
      ],
    );
  }

  Widget enterMobileField(BuildContext context) {
    return PinCodeTextField(
        controller: otpController,
        appContext: context,
        textStyle: bodySmallRegular,
        pinTheme: PinTheme(
          activeColor: primaryColor,
          inactiveColor: primaryColor,
          selectedColor: primaryColor,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(6),
          borderWidth: 1,
          fieldHeight: 40,
        ),
        length: 6,
        onChanged: (val) {});
  }
}
