import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  const ProgressCircle({
    super.key,
    required this.title,
    required this.actualValue,
    required this.estimatedValue,
  });

  final String title;
  final double actualValue;
  final double estimatedValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                strokeWidth: 20,
                value: (actualValue / estimatedValue),
                backgroundColor: Colors.purple.shade200,
                strokeCap: StrokeCap.round,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '${actualValue.toStringAsFixed(0)} / ${estimatedValue.toStringAsFixed(0)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
