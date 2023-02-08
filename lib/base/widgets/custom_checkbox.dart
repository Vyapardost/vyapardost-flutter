import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  const CustomCheckbox({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      width: 18,
      child: Checkbox(
          value: value, activeColor: primaryColor, onChanged: onChanged),
    );
  }
}
