import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_style.dart';
import './action_text_button.dart';

class SwitchText extends StatelessWidget {
  final String preText;
  final String actionText;
  final VoidCallback onPressed;
  const SwitchText(
      {super.key,
      required this.preText,
      required this.actionText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          preText,
          style: AppTextScheme.primaryParagraphRaleway
              .copyWith(color: AppColorScheme.primaryAsh),
        ),
        ActionTextButton(
            text: actionText,
            onPressed: onPressed,
            textStyle: AppTextScheme.primaryParagraphRaleway
                .copyWith(color: AppColorScheme.black)),
      ],
    );
  }
}
