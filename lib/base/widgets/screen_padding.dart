import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  final Widget child;
  final bool resize;
  final AppBar? appBar;
  const ScreenPadding(
      {Key? key, required this.child, this.resize = false, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: resize,
        appBar: appBar,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
          child: child,
        ),
      ),
    );
  }
}
