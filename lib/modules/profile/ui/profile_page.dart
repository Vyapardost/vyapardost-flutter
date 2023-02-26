import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [],
        ),
      ),
    );
  }

  Widget getUserDetails() {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: gray),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                Text(
                  'Sudarshan Mane',
                  style: bodyLargeSemiBold,
                ),
                Text(
                  '+91 7355245586',
                  style: bodySmallRegular,
                ),
              ],
            ),
          ),
          const Expanded(
            child: CustomButton(
              outlineBtn: true,
              text: 'Edit',
            ),
          )
        ],
      ),
    );
  }
}
