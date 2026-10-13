import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static final TextStyle _primary = GoogleFonts.spaceMono();
  static final TextStyle _secondary = GoogleFonts.darkerGrotesque();

  // primary
  TextStyle primaryHeading1 = _primary.copyWith(fontSize: 30);
  TextStyle primaryHeading2 = _primary.copyWith(fontSize: 24);
  TextStyle primaryHeading3 = _primary.copyWith(fontSize: 20);
  TextStyle primaryTitle = _primary.copyWith(fontSize: 18);
  TextStyle primarySubtitle = _primary.copyWith(fontSize: 16);
  TextStyle primaryLabel = _primary.copyWith(fontSize: 12);
  // secondary
  TextStyle secondaryHeading1 = _secondary.copyWith(fontSize: 30);
  TextStyle secondaryHeading2 = _secondary.copyWith(fontSize: 24);
  TextStyle secondaryHeading3 = _secondary.copyWith(fontSize: 20);
  TextStyle secondaryTitle = _secondary.copyWith(fontSize: 18);
  TextStyle secondarySubtitle = _secondary.copyWith(fontSize: 16);
  TextStyle secondaryLabel = _secondary.copyWith(fontSize: 12);
}
