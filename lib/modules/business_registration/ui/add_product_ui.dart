import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';

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
    return Column();
  }

  Widget buttonRow() {
    return CustomButton(text: 'Save to My Products');
  }
}
