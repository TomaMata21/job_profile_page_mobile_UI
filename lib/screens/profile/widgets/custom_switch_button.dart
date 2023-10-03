import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/theme/app_style.dart';

class CustomSwitchButton extends StatelessWidget {
  const CustomSwitchButton({
    super.key,
    required this.label,
    required this.value,
    this.onChanged,
  });

  final String label;
  final bool value;
  final void Function(bool)? onChanged;

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
          Row(
            children: [
              Switch(
                value: value,
                onChanged: onChanged,
                inactiveThumbColor: $styles.colors.primary,
              ),
              Text(
                value ? "open" : "close",
                style: $styles.text.bodySmall.copyWith(
                  color: $styles.colors.primaryText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
