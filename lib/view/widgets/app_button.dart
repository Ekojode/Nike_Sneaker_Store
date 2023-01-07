import 'package:flutter/material.dart';

import 'package:nike_store/utilities/dimensions.dart';
import 'package:nike_store/utilities/text_style.dart';

class AppButton1 extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;

  const AppButton1({
    super.key,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => debugPrint('Style')),
      child: Container(
        height: AppDimension.height(context) * 0.06,
        padding: EdgeInsets.symmetric(
            horizontal: AppDimension.width(context) * 0.05, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            'data',
            style:
                TextScheme.primaryParagraphPoppins.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}

class AppButton2 extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;

  const AppButton2({
    super.key,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => debugPrint('Style')),
      child: Container(
        height: AppDimension.height(context) * 0.06,
        width: AppDimension.width(context) * 0.55,
        padding: EdgeInsets.symmetric(
            horizontal: AppDimension.width(context) * 0.05, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            'data',
            style:
                TextScheme.primaryParagraphPoppins.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
