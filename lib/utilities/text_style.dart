import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './colors.dart';

class TextScheme {
  static final TextStyle primaryHeader1Font = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 34, fontWeight: FontWeight.bold);

  static final TextStyle secondaryHeader1Font = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 32, fontWeight: FontWeight.bold);

  static final TextStyle primaryHeader2Font = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 26, fontWeight: FontWeight.w600);

  static final TextStyle secondaryHeader2Font = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 20, fontWeight: FontWeight.w600);

  static final TextStyle primaryParagraphPoppins = GoogleFonts.poppins(
      color: AppColorScheme.black, fontSize: 16, fontWeight: FontWeight.w500);

  static final TextStyle secondaryParagraphPoppins = GoogleFonts.poppins(
      color: AppColorScheme.black, fontSize: 12, fontWeight: FontWeight.w500);

  static final TextStyle primaryParagraphRaleway = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 16, fontWeight: FontWeight.w500);

  static final TextStyle secondaryParagraphRaleway = GoogleFonts.raleway(
      color: AppColorScheme.black, fontSize: 12, fontWeight: FontWeight.w500);
}
