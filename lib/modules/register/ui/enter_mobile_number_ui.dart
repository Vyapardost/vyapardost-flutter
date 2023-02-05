import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/base/widgets/custom_text_field.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../../base/utils/size_utils.dart';

class EnterMobileNumberUI extends StatelessWidget {
  EnterMobileNumberUI({Key? key}) : super(key: key);

  final TextEditingController countryCodeController =
      TextEditingController(text: '+91');
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(),
          size10H,
          subtitleText(),
          size40H,
          enterMobileField(),
          const Spacer(),
          const CustomButton(
            text: 'Send OTP',
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
        Text('Mobile Number',
            style: heading4Bold.copyWith(color: secondaryColor))
      ],
    );
  }

  Widget subtitleText() {
    return Text(
      'We use it for verification, it\'s safe for us!',
      style: bodySmallSemiBold,
    );
  }

  Widget enterMobileField() {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            controller: countryCodeController,
            readOnly: true,
          ),
        ),
        size10W,
        Expanded(
            flex: 6,
            child: CustomTextField(
              controller: mobileController,
              hintText: 'Mobile Number',
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                LengthLimitingTextInputFormatter(10)
              ],
              labelText: 'Mobile Number',
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
            )),
      ],
    );
  }
}
