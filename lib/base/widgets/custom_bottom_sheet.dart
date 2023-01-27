import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget child;
  final double? initialChildSize;
  final double? maxChildSize;
  final double? minChildSize;
  final bool isDismissible;
  const CustomBottomSheet(
      {Key? key,
      required this.child,
      this.initialChildSize,
      this.maxChildSize,
      this.minChildSize,
      this.isDismissible = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool dismiss = isDismissible;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        dismiss ? Navigator.of(context).pop() : null;
      },
      child: DraggableScrollableSheet(
        initialChildSize: initialChildSize ?? 0.5,
        maxChildSize: maxChildSize ?? 0.5,
        minChildSize: minChildSize ?? 0.5,
        builder: (ctx, controller) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 30),
          child: child,
        ),
      ),
    );
  }
}
