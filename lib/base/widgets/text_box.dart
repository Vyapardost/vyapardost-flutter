import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

import '../../constants/text_themes_constants.dart';

class TextBox extends StatelessWidget {
  final String text;
  final bool enable;
  const TextBox({Key? key, required this.text, this.enable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration(
        color: enable ? primaryColor : offWhite,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(
        text,
        style: enable ? textBoxEnableStyle : textBoxStyle,
      ),
    );
  }
}
