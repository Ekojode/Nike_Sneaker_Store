import 'package:flutter/material.dart';

class ActionTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  const ActionTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed, child: Text(text, style: textStyle));
  }
}
