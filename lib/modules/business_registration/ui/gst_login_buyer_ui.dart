import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vyapardost_flutter/base/widgets/gst_text_field.dart';

import '../../../base/utils/responsive_check.dart';
import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_button.dart';
import '../../../base/widgets/screen_padding.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class GSTLoginBuyerUI extends StatelessWidget {
  GSTLoginBuyerUI({Key? key}) : super(key: key);

  final TextEditingController gstController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(),
          size40H,
          enterGstField(context),
          centerBody(),
          buttonColumn(),
        ],
      ),
    );
  }

  Widget centerBody() {
    return Expanded(
        child: Column(
      children: [
        size64H,
        Image.asset('assets/icons/checked_1.png'),
        size16H,
        Text(
          'Enter your company details',
          style: heading4Bold,
        ),
        size16H,
        iconText(
          'Get 90% higher response from seller',
          iconPath: 'assets/icons/Verified.png',
        ),
        size16H,
        iconText(
          'Access to Advance Automation',
          iconPath: 'assets/icons/workflow 1.png',
        ),
      ],
    ));
  }

  Widget iconText(String text, {String? iconPath, String? leadingText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconPath != null)
          SizedBox(height: 16, width: 20, child: Image.asset(iconPath)),
        if (leadingText != null)
          Text(leadingText,
              style: bodySmallSemiBold.copyWith(color: secondaryColor)),
        size6W,
        Text(
          text,
          style: bodySmallSemiBold.copyWith(color: primaryColor),
        )
      ],
    );
  }

  Widget titleText() {
    return Row(
      children: [
        Text(
          'Enter',
          style: heading4Bold.copyWith(color: primaryColor),
        ),
        Text(' GSTIN ', style: heading4Bold.copyWith(color: secondaryColor)),
        Text(
          'Number',
          style: heading4Bold.copyWith(color: primaryColor),
        ),
      ],
    );
  }

  Widget enterGstField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: GSTTextField(
        controller: gstController,
        maxLength: 15,
        pinBoxBorderWidth: 0.0,
        pinBoxHeight: 3.5.h,
        pinBoxWidth: Responsive.isDesktop(context)
            ? 1.43.w
            : Responsive.isTablet(context)
                ? 2.6.w
                : 5.7.w,
        pinTextStyle: bodySmallRegular,
        onDone: (val) {},
        pinBoxColor: primaryColor,
        highlightPinBoxColor: primaryColor,
        keyboardType: TextInputType.name,
      ),
    );
  }

  Widget buttonColumn() {
    return Column(
      children: const [
        CustomButton(
          text: 'Next',
        ),
        size26H,
        CustomButton(
          text: 'Dont have GST, Skip This',
          isEnable: false,
        )
      ],
    );
  }
}
