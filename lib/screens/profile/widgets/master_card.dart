import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/data.dart';
import '../../../utils/theme/app_style.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 22.h,
      padding: EdgeInsets.all($styles.insets.m),
      decoration: BoxDecoration(
          color: $styles.colors.primary,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: $styles.colors.black.withOpacity(0.1),
              offset: const Offset(0, 3),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ]),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                wallet.cardName,
                style: $styles.text.labelSmallBold.copyWith(
                  color: $styles.colors.white,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Gap($styles.insets.sm),
            Text(
              wallet.cardId,
              style: $styles.text.labelLarge,
            ),
            Gap($styles.insets.xs),
            Text(
              wallet.owner,
              style: $styles.text.labelLarge,
            ),
            Gap($styles.insets.xxxs),
            Text(
              wallet.services.toString(),
              style: $styles.text.numStyleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
