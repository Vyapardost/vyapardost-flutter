import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_button.dart';
import '../../../base/widgets/custom_text_field.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class BusinessDetailsUI extends StatelessWidget {
  BusinessDetailsUI({Key? key}) : super(key: key);

  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController businessLocationController =
      TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController companyAddressController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        size10H,
        fieldWithText(context, 'Business Name', businessNameController,
            hintText: 'Business Name'),
        size30H,
        fieldWithText(context, 'Business Location', businessLocationController,
            hintText: 'Select City',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on_rounded),
              color: Colors.black,
            )),
        size30H,
        fieldWithText(context, 'PIN Code', pinCodeController, isPin: true),
        size30H,
        fieldWithText(context, 'Company Address', companyAddressController,
            hintText: 'Address Line'),
        const Spacer(),
        buttonColumn(),
      ],
    ));
  }

  Widget fieldWithText(
      BuildContext context, String text, TextEditingController controller,
      {bool isPin = false, String? hintText, IconButton? suffixIcon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: bodySmallSemiBold,
        ),
        size6H,
        !isPin
            ? CustomTextField(
                controller: controller,
                hintText: hintText,
                iconButton: suffixIcon,
              )
            : PinCodeTextField(
                controller: controller,
                appContext: context,
                textStyle: bodySmallRegular,
                pinTheme: PinTheme(
                  activeColor: primaryColor,
                  inactiveColor: primaryColor,
                  selectedColor: primaryColor,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(6),
                  borderWidth: 1,
                  fieldHeight: 40,
                ),
                length: 6,
                onChanged: (val) {}),
      ],
    );
  }

  Widget buttonColumn() {
    return Column(
      children: const [
        CustomButton(
          text: 'Save Business Details',
        ),
        size26H,
        CustomButton(
          text: 'I don\'t have business',
          isEnable: false,
        )
      ],
    );
  }
}
