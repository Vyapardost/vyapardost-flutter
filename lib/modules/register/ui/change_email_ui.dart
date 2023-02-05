import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/utils/size_utils.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';

import '../../../base/widgets/custom_text_field.dart';
import '../../../base/widgets/screen_padding.dart';
import '../../../constants/text_themes_constants.dart';

class ChangeEmailUI extends StatelessWidget {
  ChangeEmailUI({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(),
          size10H,
          subtitleText(),
          size30H,
          fieldWithText('Email', emailController),
          const Spacer(),
          const CustomButton(
            text: 'Update Email',
          )
        ],
      ),
    );
  }

  Widget titleText() {
    return Text(
      'Change email address',
      style: heading4Bold,
    );
  }

  Widget subtitleText() {
    return Text(
      'Enter a new email address',
      style: bodySmallSemiBold,
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
