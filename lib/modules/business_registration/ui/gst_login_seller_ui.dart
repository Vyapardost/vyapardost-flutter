import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vyapardost_flutter/base/widgets/gst_text_field.dart';

import '../../../base/utils/responsive_check.dart';
import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_button.dart';
import '../../../base/widgets/screen_padding.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class GSTLoginSellerUI extends StatelessWidget {
  GSTLoginSellerUI({Key? key}) : super(key: key);

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
          'Let\'s completer your Seller account',
          style: heading4Bold,
        ),
        size16H,
        iconText(
          'Free Listing on VyaparDost',
          iconPath: 'assets/icons/Verified.png',
        ),
        size16H,
        iconText(
          'response to Verified Seller',
          leadingText: '90% Higher',
        ),
        size16H,
        iconText(
          'Smart Digital Catalog',
          iconPath: 'assets/icons/purple_book.png',
        ),
        size16H,
        iconText(
          'Premium Marketplace for Construction',
          iconPath: 'assets/icons/construction.png',
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
          text: 'Create Seller Account',
        ),
        size26H,
        CustomButton(
          text: 'I dont have GST',
          isEnable: false,
        )
      ],
    );
  }
}
