import 'package:flutter/material.dart';
import 'package:nutru/config/constants/title.dart';

class ConstrainedHeadbar extends StatelessWidget {
  const ConstrainedHeadbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      title,
      style: TextStyle(color: Colors.white),
    );
  }
}
