import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';

import '../../../base/utils/size_utils.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class EmailVerifyUI extends StatelessWidget {
  final bool passwordReset;
  const EmailVerifyUI({Key? key, this.passwordReset = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        child: Column(
      children: [
        Expanded(
          child: getBody(),
        ),
        CustomButton(
          text: 'Open mail app',
          onPressed: () {},
        ),
        size16H,
        Text(
          'Resend email (30s)',
          style: bodySmallSemiBold.copyWith(color: grayDark),
        )
      ],
    ));
  }

  Widget getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/email2.svg'),
        size16H,
        Text(
          'Open your email',
          style: heading4Bold,
        ),
        size16H,
        Text(
          passwordReset
              ? 'We send ta password reset email to'
              : 'We sent a verification to',
          style: bodySmallRegular.copyWith(color: grayDark),
        ),
        size16H,
        Text(
          'example@gmail.com',
          style: bodySmallSemiBold,
        ),
        size16H,
        Text(
          passwordReset
              ? 'Please click the link inside mail to reset password'
              : 'Please click the link inside mail to verify',
          style: bodySmallRegular.copyWith(color: grayDark),
        ),
      ],
    );
  }
}
