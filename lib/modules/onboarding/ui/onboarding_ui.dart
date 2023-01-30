import 'package:flutter/material.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/logo_with_text.dart';

class OnboardingUI extends StatefulWidget {
  const OnboardingUI({Key? key}) : super(key: key);

  @override
  State<OnboardingUI> createState() => _OnboardingUIState();
}

class _OnboardingUIState extends State<OnboardingUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            children: [size52H, const LogoWithText(), onboardingPages()]),
      ),
    );
  }

  Widget onboardingPages() {
    return PageView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container();
        });
  }
}
