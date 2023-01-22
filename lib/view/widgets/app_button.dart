import 'package:flutter/material.dart';

import '../../utilities/dimensions.dart';
import '../../utilities/text_style.dart';

class LongButton extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;
  final String text;
  final VoidCallback onPressed;

  const LongButton({
    super.key,
    required this.textColor,
    required this.buttonColor,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          fixedSize: Size(AppDimension.width(context) * 0.9,
              AppDimension.height(context) * 0.07),
          backgroundColor: buttonColor),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextScheme.primaryParagraphRaleway.copyWith(color: textColor),
      ),
    );
  }
}

class ShortButton extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;

  const ShortButton({
    super.key,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          fixedSize: Size(AppDimension.width(context) * 0.55,
              AppDimension.height(context) * 0.07),
          backgroundColor: buttonColor),
      child: Text(
        'data',
        style: AppTextScheme.primaryParagraphRaleway.copyWith(color: textColor),
      ),
      onPressed: () {},
    );
  }
}
