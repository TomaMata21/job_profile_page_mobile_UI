import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../utils/theme/app_style.dart';

class NumItem extends StatelessWidget {
  const NumItem({super.key, required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: $styles.text.numStyle,
        ),
        Text(
          label,
          style: $styles.text.labelSmall,
        ),
      ],
    ).animate().fade(
          delay: const Duration(milliseconds: 400),
          duration: const Duration(milliseconds: 1800),
        );
  }
}
