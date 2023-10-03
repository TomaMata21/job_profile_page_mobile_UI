import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';

class AddWorkerButton extends StatelessWidget {
  const AddWorkerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($styles.insets.xs),
      margin: EdgeInsets.all($styles.insets.xxs),
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
            padding: EdgeInsets.all($styles.insets.s),
            child: Icon(
              Icons.add,
              color: $styles.colors.white,
            ),
          ),
          Gap($styles.insets.s),
          Text(
            LocalString.addWorkers,
            textAlign: TextAlign.center,
            style: $styles.text.houseText,
          ),
        ],
      ),
    );
  }
}
