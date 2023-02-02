import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_text_field.dart';
import '../../../constants/color_constants.dart';

class ResetPasswordUI extends StatelessWidget {
  ResetPasswordUI({Key? key}) : super(key: key);

  final TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        child: Column(
      children: [
        titleText(),
        size30H,
        fieldWithText('New Password', newPasswordController),
        size6H,
        instructionForPassword(),
        size30H,
        const CustomButton(
          text: 'Submit',
        ),
        size10H,
        Text(
          'Cancel',
          textAlign: TextAlign.center,
          style: bodySmallSemiBold.copyWith(color: primaryColor),
        )
      ],
    ));
  }

  Widget titleText() {
    return Text(
      'Type New Password',
      style: heading4Bold,
    );
  }

  Widget labelNewPassword() {
    return Text(
      'New Password',
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

  Widget instructionForPassword() {
    return Row(
      children: [
        const Icon(
          Icons.info_outline,
          color: black,
        ),
        size12W,
        Expanded(
          child: Text(
            'minimum 8 characters with combination of upper case, lower case, number and special character.',
            maxLines: 2,
            style: captionLargeRegular.copyWith(color: grayDark),
          ),
        )
      ],
    );
  }
}
