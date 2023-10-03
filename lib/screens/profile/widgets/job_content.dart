import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/data.dart';
import '../../../utils/theme/app_style.dart';


class JobContent extends StatelessWidget {
  const JobContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: jobs
          .map(
            (e) => Container(
          width: 20.w,
          height: 18.w,
          padding: EdgeInsets.all($styles.insets.xs),
          margin: EdgeInsets.symmetric(
            horizontal: $styles.insets.xxs,
          ),
          decoration: BoxDecoration(
              color: $styles.colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color:
                  $styles.colors.black.withOpacity(0.2),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ]),
          child: Center(
            child: Text(
              e,
              style: $styles.text.bodySmall.copyWith(
                color: $styles.colors.primaryText,
              ),
            ),
          ),
        ),
      )
          .toList(),
    );
  }
}
