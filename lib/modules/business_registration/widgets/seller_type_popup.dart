import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_bottom_sheet.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

import '../../../base/utils/size_utils.dart';
import '../../../constants/text_themes_constants.dart';

class SellerTypePopup extends StatelessWidget {
  final bool fromEnquiryPage;

  const SellerTypePopup({Key? key, this.fromEnquiryPage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          fromEnquiryPage
              ? 'Select seller type who can see this enquiry'
              : 'What\'s your Business Type?',
          style: bodyLargeSemiBold.copyWith(fontWeight: FontWeight.w700),
        ),
        if (!fromEnquiryPage) size6H,
        if (!fromEnquiryPage)
          Text(
            'You will get selected type leads',
            style: bodySmallSemiBold.copyWith(color: grayDark),
          ),
        size30H,
        selectAllText(),
        size30H,
        businessTypeOptions(),
        size30H,
        buttonRow()
      ],
    ));
  }

  Widget businessTypeOptions() {
    return Column(
      children: [
        checkBoxText('Manufacturer'),
        size16H,
        checkBoxText('Wholesaler'),
        size16H,
        checkBoxText('Retailer'),
        size16H,
        checkBoxText('Contractor / Services'),
      ],
    );
  }

  Widget buttonRow() {
    return Row(
      children: const [
        CustomButton(
          text: 'CANCEL',
          outlineBtn: true,
        ),
        size16W,
        CustomButton(text: 'SAVE')
      ],
    );
  }

  Widget selectAllText({bool isSelected = false}) {
    return StatefulBuilder(
      builder: (context, setNewState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select All',
              style: bodyLargeSemiBold.copyWith(
                  color: primaryColor, fontWeight: FontWeight.w700),
            ),
            SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                    value: isSelected,
                    activeColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    onChanged: (val) {
                      setNewState(() {
                        isSelected = !isSelected;
                      });
                    }))
          ],
        );
      },
    );
  }

  Widget checkBoxText(String text, {bool isSelected = false}) {
    return StatefulBuilder(
      builder: (context, setNewState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: bodyLargeSemiBold,
            ),
            SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                    value: isSelected,
                    activeColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    onChanged: (val) {
                      setNewState(() {
                        isSelected = !isSelected;
                      });
                    }))
          ],
        );
      },
    );
  }
}
