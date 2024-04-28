import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController {
  ThemeData get appTheme => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.purple,
        textTheme: GoogleFonts.ralewayTextTheme(),
      );
}
