import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutru/config/config.dart';

import 'config/constants/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: title,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
      routeInformationProvider: appRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: Get.put(ThemeController().theme).value,
    );
  }
}
