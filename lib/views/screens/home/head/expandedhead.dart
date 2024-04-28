import 'package:flutter/material.dart';
import 'package:nutru/views/widgets/progresscircle.dart';
import 'package:nutru/views/widgets/progresstile.dart';

class ExpandedHeadbar extends StatelessWidget {
  const ExpandedHeadbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
