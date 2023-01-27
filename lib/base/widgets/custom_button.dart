import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

import '../../constants/text_themes_constants.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final bool outlineBtn;
  final bool isLoading;
  final double? height;
  final IconData? icon;
  final Color? fillColor;
  const CustomButton(
      {Key? key,
      this.text,
      this.onPressed,
      this.outlineBtn = false,
      this.isLoading = false,
      this.fillColor,
      this.icon,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        // height: Responsive.isDesktop(context) ? 5.0.h : height ?? 45.0,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: outlineBtn ? null : fillColor ?? primaryColor,
          border: outlineBtn
              ? Border.all(
                  color: black,
                )
              : null,
          borderRadius: BorderRadius.circular(
            6.0,
          ),
        ),
        child: Stack(
          children: [
            Visibility(
              visible: !isLoading,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text ?? '',
                    style:
                        outlineBtn ? buttonOutlineTextTheme : buttonTextTheme,
                  ),
                  if (icon != null)
                    const SizedBox(
                      width: 12,
                    ),
                  if (icon != null) Icon(icon)
                ],
              ),
            ),
            Visibility(
              visible: isLoading,
              child: const Center(
                child: SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: CircularProgressIndicator(
                    color: white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
