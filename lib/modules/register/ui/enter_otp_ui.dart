import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_button.dart';
import '../../../base/widgets/custom_text_field.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class EnterOtpUI extends StatelessWidget {
  EnterOtpUI({Key? key}) : super(key: key);

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        children: [
          titleText(),
          size10H,
          subtitleText(),
          size10H,
          changeText(),
          size40H,
          enterOtpField(),
          const Spacer(),
          const CustomButton(
            text: 'Next',
          ),
          size10H,
          const Text(
            'Resend OTP (30s)',
            textAlign: TextAlign.center,
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

  Widget enterOtpField() {
    return CustomTextField(
      controller: otpController,
    );
  }
}
