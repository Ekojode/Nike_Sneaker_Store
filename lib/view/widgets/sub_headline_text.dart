import 'package:flutter/cupertino.dart';

import '../../utilities/text_style.dart';

class SubHeadlineText extends StatelessWidget {
  final String text;
  final Color color;
  const SubHeadlineText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        text,
        style: AppTextScheme.primaryParagraphPoppins.copyWith(color: color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
