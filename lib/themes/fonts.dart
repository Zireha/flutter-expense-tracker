import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static final TextStyle _primary = GoogleFonts.spaceMono();
  static final TextStyle _secondary = GoogleFonts.darkerGrotesque();

  static TextStyle primaryHeader = _primary.copyWith(
    fontSize: 26,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  static TextStyle primaryHeaderBold = _primary.copyWith(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  static TextStyle primaryTitle = _primary.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static TextStyle primaryTitleBold = _primary.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );

  static TextStyle primarySubtitle1 = _primary.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  static TextStyle primarySubtitle1Bold = _primary.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );

  static TextStyle primarySubtitle2 = _primary.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
  );

  static TextStyle secondaryBody1 = _secondary.copyWith(
    fontSize: 21,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static TextStyle secondaryBody2 = _secondary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    letterSpacing: .25,
  );

  static TextStyle buttonText = _secondary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );

  static TextStyle captionText = _secondary.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .4,
  );
}
