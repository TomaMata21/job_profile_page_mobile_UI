import 'package:flutter/material.dart';

import '../../../utils/constants/data.dart';
import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';

class PayRangePrice extends StatelessWidget {
  const PayRangePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocalString.payRange,
          style: $styles.text.labelSmall,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: $styles.insets.xxxs),
          child: Text(
            statistics.range,
            style: $styles.text.numStyleLight.copyWith(
              color: $styles.colors.white,
            ),
          ),
        ),
        Text(
          LocalString.negotiable,
          style: $styles.text.labelSmall,
        ),
      ],
    );
  }
}
