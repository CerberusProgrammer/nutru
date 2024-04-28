import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:nutru/config/theme/theme.controller.dart';
import 'package:nutru/views/screens/home/head/constrainedhead.dart';
import 'package:nutru/views/screens/home/head/expandedhead.dart';
import 'package:nutru/views/widgets/floatingbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      centerTitle: true,
      appBarColor: ThemeController().appTheme.colorScheme.primary,
      title: const ConstrainedHeadbar(),
      headerExpandedHeight: 0.3,
      stretchMaxHeight: 0.4,
      headerWidget: const ExpandedHeadbar(),
      body: List.generate(20, (index) => Text('$index')),
      floatingActionButton: const FloatingButton(icon: Icons.add),
    );
  }
}
