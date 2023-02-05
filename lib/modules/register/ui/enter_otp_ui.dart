import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_button.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class EnterOtpUI extends StatelessWidget {
  EnterOtpUI({Key? key}) : super(key: key);

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
          size10H,
          changeText(),
          size40H,
          enterOtpField(context),
          const Spacer(),
          const CustomButton(
            text: 'Next',
          ),
          size10H,
          const Center(
            child: Text(
              'Resend OTP (30s)',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget titleText() {
    return Row(
      children: [
        Text(
          'Enter',
          style: heading4Bold.copyWith(color: primaryColor),
        ),
        size6W,
        Text('OTP', style: heading4Bold.copyWith(color: secondaryColor))
      ],
    );
  }

  Widget subtitleText() {
    return Text(
      'We use it for verification, it\'s safe for us!',
      style: bodySmallSemiBold,
    );
  }

  Widget changeText() {
    return Text(
      'Change',
      style: bodySmallSemiBold.copyWith(color: primaryColor),
    );
  }

  Widget enterOtpField(
    BuildContext context,
  ) {
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
