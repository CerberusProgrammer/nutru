import 'package:flutter/material.dart';

class ProgressTile extends StatelessWidget {
  const ProgressTile({
    super.key,
    required this.title,
    required this.progress,
    this.onTap,
    this.icon,
  });

  final String title;
  final double progress;
  final Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: LinearProgressIndicator(
        minHeight: 15,
        value: progress,
        borderRadius: BorderRadius.circular(5),
      ),
      onTap: onTap,
    );
  }
}
