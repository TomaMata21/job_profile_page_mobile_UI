import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/data.dart';
import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 22.h,
      padding: EdgeInsets.all($styles.insets.m),
      decoration: BoxDecoration(
          color: $styles.colors.lightPrimary,
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
          children: [
            Text(
              LocalString.walletBalance,
              style: $styles.text.labelSmallBold,
            ),
            Gap($styles.insets.xxxs),
            Text(
              wallet.balance,
              style: $styles.text.numStyleMedium,
            ),
            Gap($styles.insets.sm),
            Text(
              LocalString.totalService,
              style: $styles.text.labelSmallBold,
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
