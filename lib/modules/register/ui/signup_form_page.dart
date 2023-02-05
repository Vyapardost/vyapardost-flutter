import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vyapardost_flutter/base/utils/size_utils.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/base/widgets/custom_text_field.dart';
import 'package:vyapardost_flutter/base/widgets/logo_with_text.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';
import 'package:vyapardost_flutter/base/widgets/widget_box.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../../constants/color_constants.dart';

class SignUpFormUI extends StatelessWidget {
  final bool login;
  const SignUpFormUI({Key? key, this.login = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ScreenPadding(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              size26H,
              const LogoWithText(),
              size52H,
              fieldWithText('Email', emailController),
              size26H,
              fieldWithText('Password', passwordController),
              size6H,
              instructionForPassword(),
              size26H,
              authButton(),
              forgotPasswordText(),
              size40H,
              continueText(),
              size40H,
              otherSiteAuth(),
              size76H,
              haveReferralCodeText(),
              size40H,
              termAndConditionText(),
            ],
          ),
        ),
      ),
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
        CustomTextField(controller: controller),
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

  Widget authButton() {
    return CustomButton(
      text: login ? 'Login' : 'Signup',
    );
  }

  Widget forgotPasswordText() {
    return Center(
      child: TextButton(
        clipBehavior: Clip.hardEdge,
        onPressed: () {},
        child: Text(
          'Forgot Password',
          style: bodySmallSemiBold.copyWith(color: primaryColor),
        ),
      ),
    );
  }

  Widget continueText() {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: primaryColor,
          ),
        ),
        Text(
          '    Or continue with   ',
          style: bodyLargeSemiBold.copyWith(color: primaryColor),
        ),
        const Expanded(child: Divider(color: primaryColor))
      ],
    );
  }

  Widget otherSiteAuth() {
    return Row(
      children: [
        Expanded(
          child: WidgetBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/google.svg'),
              size10W,
              Text(
                'Google',
                style: bodyLargeRegular.copyWith(fontWeight: FontWeight.w500),
              )
            ],
          )),
        ),
      ],
    );
  }

  Widget haveReferralCodeText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Have a Referral Code?',
          style: bodySmallSemiBold,
        ),
        size6W,
        Text(
          '(Optional)',
          style: captionLargeSemiBold.copyWith(color: grayDark),
        ),
      ],
    );
  }

  Widget termAndConditionText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'By continuing you agree to our',
          style: bodySmallRegular,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Terms of Use',
              style: bodySmallSemiBold.copyWith(color: primaryColor),
            ),
            Text(' and ', style: bodySmallSemiBold),
            Text('Privacy Policy',
                style: bodySmallSemiBold.copyWith(color: primaryColor))
          ],
        )
      ],
    );
  }
}
