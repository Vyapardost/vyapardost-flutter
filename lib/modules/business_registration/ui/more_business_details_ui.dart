import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/utils/size_utils.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

import '../../../base/widgets/custom_appbar.dart';
import '../../../base/widgets/custom_text_field.dart';
import '../../../base/widgets/screen_padding.dart';
import '../../../constants/text_themes_constants.dart';

class MoreBusinessDetailsUI extends StatelessWidget {
  MoreBusinessDetailsUI({Key? key}) : super(key: key);

  final TextEditingController incorporationYearController =
      TextEditingController();
  final TextEditingController turnoverController = TextEditingController();
  final TextEditingController employeeCountController = TextEditingController();
  final TextEditingController businessMailController = TextEditingController();
  final TextEditingController clientsController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        appBar: customAppbar('Optional details - for Digital Catalog'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: getBody(context)),
            buttonRow(),
          ],
        ));
  }

  Widget getBody(BuildContext context) {
    return Column(
      children: [
        imageWidget(),
        size26H,
        Row(
          children: [
            Expanded(
              child: fieldWithText(
                  context, 'Incorporation Year', incorporationYearController),
            ),
            size16W,
            Expanded(
              child: fieldWithText(
                  context, 'Turnover (In \u{20B9})', turnoverController),
            ),
          ],
        ),
        size26H,
        fieldWithText(context, 'Employee Count', employeeCountController),
        size26H,
        fieldWithText(context, 'Business Mail', businessMailController),
        size26H,
        fieldWithText(context, 'Clients', clientsController),
        size26H,
        fieldWithText(context, 'Website', websiteController),
        size26H,
      ],
    );
  }

  Widget imageWidget() {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: offWhite, borderRadius: BorderRadius.circular(6)),
          child: Image.asset('assets/icons/camera_icon.png'),
        ),
        Text(
          'Business Logo',
          style: bodySmallSemiBold,
        )
      ],
    );
  }

  Widget fieldWithText(
      BuildContext context, String text, TextEditingController controller,
      {String? hintText, IconButton? suffixIcon}) {
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
          hintText: hintText,
          iconButton: suffixIcon,
        ),
      ],
    );
  }

  Widget buttonRow() {
    return Column(
      children: const [
        CustomButton(
          text: 'Get Started!',
        ),
        size26H,
        CustomButton(
          text: 'Skip I will do it later',
          isEnable: false,
        )
      ],
    );
  }
}
