import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './colors.dart';

class AppTextScheme {
  static final TextStyle primaryHeaderRalewayFont = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 34, fontWeight: FontWeight.w900);

  static final TextStyle secondaryHeaderRalewayFont = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 32, fontWeight: FontWeight.w700);

  static final TextStyle primaryMidHeaderRalewayFont = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 26, fontWeight: FontWeight.w600);

  static final TextStyle secondaryMidHeaderRalewayFont = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 20, fontWeight: FontWeight.w600);

  static final TextStyle primaryParagraphPoppins = GoogleFonts.poppins(
      color: AppColorScheme.black, fontSize: 16, fontWeight: FontWeight.w400);

  static final TextStyle secondaryParagraphPoppins = GoogleFonts.poppins(
      color: AppColorScheme.black, fontSize: 12, fontWeight: FontWeight.w400);

  static final TextStyle primaryParagraphRaleway = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 16, fontWeight: FontWeight.w500);

  static final TextStyle secondaryParagraphRaleway = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 12, fontWeight: FontWeight.w500);
}
