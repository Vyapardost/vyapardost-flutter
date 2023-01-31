import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/logo_with_text.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class OnboardingUI extends StatefulWidget {
  const OnboardingUI({Key? key}) : super(key: key);

  @override
  State<OnboardingUI> createState() => _OnboardingUIState();
}

class _OnboardingUIState extends State<OnboardingUI> {
  int index = 0;
  bool showStartCard = false;

  @override
  void initState() {
    super.initState();
    // Timer.periodic(const Duration(seconds: 5), (timer) {
    //   print('Timer called');
    //   setState(() {
    //     if (index == 3) {
    //       // if we're at the end of the slideshow...
    //       timer.cancel(); //...stop running the timer
    //       setState(() {
    //         showStartCard =
    //             true; //...and show the button to begin the onboarding process
    //       });
    //     } else {
    //       index++;
    //       print('Current index $index'); // otherwise, show the next slide
    //     }
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          size52H,
          const LogoWithText(),
          size102H,
          onboardingPages(),
          indicatorRow(),
          size40H,
          logInButton(),
        ]),
      ),
    );
  }

  Widget onboardingPages() {
    return Expanded(
      child: PageView(
        scrollDirection: Axis.horizontal,
        // physics:
        //     DirectionalScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        children: [page1(), page2(), page3(), page4()],
      ),
    );
  }

  Widget logInButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26.0),
      child: CustomButton(
        text: 'Log In',
        onPressed: () {},
      ),
    );
  }

  Widget page1() {
    return Column(
      children: [
        Image.asset('assets/icons/Construction-Materials 1.png'),
        size26H,
        Image.asset('assets/icons/handshake 1.png'),
        size10H,
        Text(
          'Connect with Leading',
          style: onboardingTextStyle,
        ),
        size10H,
        Text(
          'Construction Seller',
          style: onboardingTextStyle,
        ),
      ],
    );
  }

  Widget page2() {
    return Column(
      children: [
        Image.asset('assets/icons/procurement automation 1.png'),
        size26H,
        Image.asset('assets/icons/workflow 1.png'),
        size10H,
        Text(
          'Automate Contracts & Purchase',
          style: onboardingTextStyle,
        ),
        size26H,
        iconTextPair('8665118_book_open_icon.svg', 'Smart Orders'),
        size10H,
        iconTextPair('Sign.svg', 'Digital Signature'),
        size10H,
        iconTextPair('analytics.svg', 'Analytics & Comparison'),
      ],
    );
  }

  Widget page3() {
    return Column(
      children: [
        Image.asset(
          'assets/icons/Auction Graphic 2.png',
        ),
        size26H,
        Image.asset('assets/icons/Path 1842.png'),
        size10H,
        Text(
          'Negotiate with E-Auction',
          style: onboardingTextStyle,
        ),
        size26H,
        iconTextPair('handshake_1.svg', 'Say hello to savings!'),
        size10H,
        iconTextPair('emoji_waving.svg', 'Goodbye to delays.'),
      ],
    );
  }

  Widget page4() {
    return Column(
      children: [
        Image.asset(
          'assets/icons/purchase-manager 1.png',
        ),
        size102H,
        Text(
          'Apka Apna Purchase Manager',
          style: onboardingTextStyle,
        ),
      ],
    );
  }

  Widget iconTextPair(String iconName, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/$iconName'),
        size10W,
        Text(
          text,
          style: onboardingSmallTextStyle,
        ),
      ],
    );
  }

  Widget indicatorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        indicator(index == 0),
        size10W,
        indicator(index == 1),
        size10W,
        indicator(index == 2),
        size10W,
        indicator(index == 3),
      ],
    );
  }

  Widget indicator(bool selected) {
    return Container(
      height: 4,
      width: 24,
      decoration: BoxDecoration(
        color: selected ? primaryColor : primaryColorUltraLight,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class DirectionalScrollPhysics extends ScrollPhysics {
  DirectionalScrollPhysics({
    this.inverted = false,
    ScrollPhysics? parent,
  }) : super(parent: parent);

  final bool inverted;

  @override
  DirectionalScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return DirectionalScrollPhysics(
        inverted: inverted, parent: buildParent(ancestor));
  }

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    final bool condition = this.inverted ? value < 0 : value > 0;
    if (condition) return value;
    return 0.0;
  }
}
