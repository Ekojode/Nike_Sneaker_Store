import 'package:flutter/material.dart';

import '../../utilities/text_style.dart';

class HeadLineText extends StatelessWidget {
  final String text;
  final Color color;
  const HeadLineText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextScheme.secondaryHeaderRalewayFont.copyWith(color: color),
    );
  }
}
