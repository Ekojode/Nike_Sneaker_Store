import 'package:flutter/material.dart';
import 'package:nike_store/utilities/colors.dart';
import 'package:nike_store/utilities/dimensions.dart';
import 'package:nike_store/utilities/text_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'data',
          style: TextScheme.primaryParagraphRaleway,
        ),
        SizedBox(height: AppDimension.height(context) * 0.01),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Read',
            filled: true,
            focusColor: AppColorScheme.lightAsh,
            fillColor: AppColorScheme.lightAsh,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: AppColorScheme.lightAsh),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: AppColorScheme.lightAsh),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: AppColorScheme.lightAsh),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          textCapitalization: TextCapitalization.sentences,
        ),
      ],
    );
  }
}
