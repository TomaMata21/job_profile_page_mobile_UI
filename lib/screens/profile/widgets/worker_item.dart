import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/theme/app_style.dart';

class WorkerItem extends StatelessWidget {
  const WorkerItem({super.key, required this.worker, required this.index});

  final String worker;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($styles.insets.xs),
      margin: EdgeInsets.all($styles.insets.xxxs),
      width: 20.w,
      decoration: BoxDecoration(
          color: $styles.colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: $styles.colors.black.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 2,
            ),
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: $styles.colors.primary,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all($styles.insets.xxxxs),
            child: Image.asset("assets/images/worker$index.png"),
          ),
          Gap($styles.insets.s),
          Text(
            worker,
            textAlign: TextAlign.center,
            style: $styles.text.houseText,
          ),
        ],
      ),
    );
  }
}
