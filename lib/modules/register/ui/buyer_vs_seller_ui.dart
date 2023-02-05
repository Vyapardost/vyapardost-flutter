import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/utils/size_utils.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

class BuyerVsSeller extends StatelessWidget {
  const BuyerVsSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please Select your profile',
            style: heading4Bold.copyWith(color: primaryColor),
          ),
          size40H,
          chooseCard('Buyer', 'assets/icons/buyer 1.png', () {}),
          size40H,
          chooseCard('Seller', 'assets/icons/truck 1.png', () {}),
        ],
      ),
    );
  }

  Widget chooseCard(String text, String imagePath, VoidCallback onSelect) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 26),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: lightGray,
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(2, 2), // changes position of shadow
            ),
            BoxShadow(
              color: lightGray,
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(-2, -2), // changes position of shadow
            ),
          ],
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(6)),
      child: Row(children: [
        SizedBox(height: 60, width: 60, child: Image.asset(imagePath)),
        size40W,
        Text(
          text,
          style: heading4Bold,
        )
      ]),
    );
  }
}
