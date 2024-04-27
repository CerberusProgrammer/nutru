import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutru/config/theme/theme.controller.dart';
import 'package:nutru/views/widgets/progresscircle.dart';
import 'package:nutru/views/widgets/progresstile.dart';

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
      headerExpandedHeight: 0.3,
      stretchMaxHeight: 0.4,
      headerWidget: Container(
        color: Colors.purple.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
          child: Row(
            children: [
              const ProgressCircle(
                title: 'Progress',
                actualValue: 10,
                estimatedValue: 22,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              const Expanded(
                child: Column(
                  children: [
                    ProgressTile(title: 'Proteins', progress: 0.8),
                    ProgressTile(title: 'Carbs', progress: 0.3),
                    ProgressTile(title: 'Fat', progress: 0.6),
                  ],
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
