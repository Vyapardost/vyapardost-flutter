import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  final Widget child;
  final bool resize;
  const ScreenPadding({Key? key, required this.child, this.resize = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: resize,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
          child: child,
        ),
      ),
    );
  }
}
