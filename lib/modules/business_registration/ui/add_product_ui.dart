import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_appbar.dart';
import '../../../base/widgets/screen_padding.dart';

class AddProductUI extends StatelessWidget {
  const AddProductUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        appBar: customAppbar('Add Product you Sell'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: getBody()),
            buttonRow(),
          ],
        ));
  }

  Widget getBody() {
    return Column(
      children: [
        getProductSelectDropdown(),
        size10H,
        Row(
          children: [
            getProductItem('Fabrication', ''),
            getProductItem('Fabrication', ''),
            getProductItem('Fabrication', ''),
            getProductItem('Fabrication', ''),
          ],
        )
      ],
    );
  }

  Widget getProductSelectDropdown() {
    return Container();
  }

  Widget getProductItem(String text, String imageUrl) {
    return Container(
      height: 86,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image(),
              cross(),
            ],
          ),
          Text(
            text,
            style: bodySmallRegular,
          ),
        ],
      ),
    );
  }

  Widget image() {
    return Container(
      decoration: BoxDecoration(
          color: lightGray, borderRadius: BorderRadius.circular(6)),
    );
  }

  Widget cross() {
    return const Icon(
      Icons.cancel_sharp,
      color: secondaryColor,
    );
  }

  Widget buttonRow() {
    return const CustomButton(text: 'Save to My Products');
  }
}
