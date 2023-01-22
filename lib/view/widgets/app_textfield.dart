import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/dimensions.dart';
import '../../utilities/text_style.dart';

class AppTextField extends StatefulWidget {
  final String header;
  final String hint;
  final bool isObscurable;
  const AppTextField(
      {super.key,
      required this.header,
      required this.hint,
      required this.isObscurable});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.header,
          style: AppTextScheme.primaryParagraphRaleway
              .copyWith(color: AppColorScheme.secondaryBlack),
        ),
        SizedBox(height: AppDimension.height(context) * 0.01),
        TextFormField(
          obscureText: widget.isObscurable ? _obscureText : false,
          decoration: InputDecoration(
            hintText: widget.hint,
            filled: true,
            focusColor: AppColorScheme.lightAsh,
            fillColor: AppColorScheme.lightAsh,
            suffixIcon: widget.isObscurable
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20,
                    ),
                  )
                : null,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: AppColorScheme.lightAsh),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: AppColorScheme.lightAsh),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            border: const OutlineInputBorder(
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
