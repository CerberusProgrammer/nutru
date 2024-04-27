import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutru/config/theme.controller.dart';
import 'package:nutru/views/home.screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Get.put(ThemeController().theme).value,
      home: const HomeScreen(),
    );
  }
}
