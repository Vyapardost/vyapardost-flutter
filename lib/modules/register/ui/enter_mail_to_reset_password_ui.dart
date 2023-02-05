import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_text_field.dart';
import '../../../constants/color_constants.dart';

class EnterMailToResetPasswordUI extends StatelessWidget {
  EnterMailToResetPasswordUI({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText(),
        size30H,
        fieldWithText('Email', emailController),
        size30H,
        const CustomButton(
          text: 'Reset Password',
        ),
        size10H,
        Center(
          child: Text(
            'Cancel',
            textAlign: TextAlign.center,
            style: bodySmallSemiBold.copyWith(color: primaryColor),
          ),
        )
      ],
    ));
  }

  Widget titleText() {
    return Text(
      'Enter email to reset password',
      style: heading4Bold,
    );
  }

  Widget fieldWithText(String text, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: bodySmallSemiBold,
        ),
        size6H,
        CustomTextField(
          controller: controller,
        ),
      ],
    );
  }
}
