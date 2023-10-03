import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/theme/app_style.dart';

class LineInfo extends StatelessWidget {
  const LineInfo({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.xxxs),
      margin: EdgeInsets.only(bottom: $styles.insets.s),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: $styles.text.bodyMedium,
          ),
          Gap($styles.insets.xxxs),
          Text(
            value,
            style: $styles.text.bodySmall.copyWith(
              color: $styles.colors.primaryText,
            ),
          ),
        ],
      ),
    );
  }
}
