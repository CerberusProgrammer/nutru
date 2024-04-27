import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutru/config/theme.controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      centerTitle: true,
      appBarColor: Get.put(ThemeController().theme).value.colorScheme.primary,
      title: const Text(
        'Nutrû',
        style: TextStyle(color: Colors.white),
      ),
      headerExpandedHeight: 0.30,
      headerWidget: Container(
        color: Colors.purple.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            children: [
              ListTile(
                title: const Text('Proteins'),
                subtitle: LinearProgressIndicator(
                  minHeight: 15,
                  value: 0.2,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              ListTile(
                title: const Text('Carbs'),
                subtitle: LinearProgressIndicator(
                  minHeight: 15,
                  value: 0.2,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              ListTile(
                title: const Text('Fat'),
                subtitle: LinearProgressIndicator(
                  minHeight: 15,
                  value: 0.2,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
      body: List.generate(20, (index) => const Text('hi')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        child: const Icon(Icons.add),
      ),
    );
  }
}
