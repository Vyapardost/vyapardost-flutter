import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/utils/size_utils.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

class BuyerVsSmaller extends StatelessWidget {
  const BuyerVsSmaller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(2, 2), // changes position of shadow
            ),
            BoxShadow(
              color: primaryColor.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(-2, -2), // changes position of shadow
            ),
          ],
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(6)),
      child: Row(children: [
        Image.asset(imagePath),
        size40W,
        Text(
          text,
          style: heading4Bold,
        )
      ]),
    );
  }
}
