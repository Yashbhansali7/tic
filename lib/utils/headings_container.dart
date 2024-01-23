import 'package:flutter/material.dart';

import '../constants.dart';

class HeadingsContainer extends StatelessWidget {
  final String text;
  final double fontSize;
  const HeadingsContainer(
      {required this.text, required this.fontSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.pink,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: AppColors.black)),
      child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.cream,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: AppColors.black)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Image.asset(
                  "assets/images/card-design-shape.png",
                  width: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 8),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Image.asset(
                  "assets/images/card-design-shape.png",
                  width: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
              ],
            ),
          )),
    );
  }
}
