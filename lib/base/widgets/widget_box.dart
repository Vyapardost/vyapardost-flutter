import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

class WidgetBox extends StatelessWidget {
  final Widget child;
  const WidgetBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
