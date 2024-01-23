import 'package:flutter/material.dart';

import '../constants.dart';

class ContentContainer extends StatelessWidget {
  final Color outerColor;
  final Color? innerColor;
  final Widget child;
  final double? paddingSize;
  const ContentContainer(
      {required this.outerColor,
      this.innerColor,
      required this.child,
      this.paddingSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingSize ?? 5),
      decoration: BoxDecoration(
          color: outerColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: AppColors.black, width: 2)),
      child: Container(
        padding: const EdgeInsets.only(top: 18.0, bottom: 8),
        decoration: BoxDecoration(
            color: innerColor ?? AppColors.cream,
            borderRadius: BorderRadius.circular(5.9),
            border: Border.all(color: AppColors.black, width: 2)),
        child: child,
      ),
    );
  }
}
