import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  final Widget child;
  const ScreenPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: child,
      ),
    );
  }
}
