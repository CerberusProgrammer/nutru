import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends GetxController {
  var theme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorSchemeSeed: Colors.purple,
    textTheme: GoogleFonts.rubikTextTheme(),
  ).obs;
}
