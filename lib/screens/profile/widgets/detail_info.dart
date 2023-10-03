import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/constants/data.dart';
import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({super.key, required this.label, required this.value,});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: $styles.text.bodyMedium.copyWith(
            color: $styles.colors.white,
          ),
        ),
        Gap($styles.insets.xxxs),
        Text(
          value,
          style: $styles.text.labelSmall,
        ),
      ],
    );
  }
}
