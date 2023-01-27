import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/constants/text_themes_constants.dart';

import '../../constants/color_constants.dart';

class TabBarWidget extends StatefulWidget {
  final String firstTabText;
  final VoidCallback firstTap;
  final String secondTabText;
  final bool firstTabSelected;
  final VoidCallback secondTap;
  const TabBarWidget({
    Key? key,
    required this.firstTabText,
    required this.secondTabText,
    required this.firstTap,
    required this.secondTap,
    this.firstTabSelected = true,
  }) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarStateWidget();
}

class _TabBarStateWidget extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: widget.firstTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: widget.firstTabSelected
                      ? Theme.of(context).primaryColor
                      : white,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.firstTabText,
                    style: widget.firstTabSelected
                        ? tabTextEnableStyle
                        : tabTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: widget.secondTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: !widget.firstTabSelected
                      ? Theme.of(context).primaryColor
                      : white,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.secondTabText,
                    style: !widget.firstTabSelected
                        ? tabTextEnableStyle
                        : tabTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
