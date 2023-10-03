import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:job_ui_app/models/service.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/theme/app_style.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.service,
  });

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 85.w,
        padding: EdgeInsets.all($styles.insets.s),
        margin: EdgeInsets.symmetric(vertical: $styles.insets.xs),
        decoration: BoxDecoration(
            color: $styles.colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: $styles.colors.black.withOpacity(0.2),
                offset: const Offset(0, 2),
                blurRadius: 4,
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(service.image),
            Gap($styles.insets.xs),
            Text(service.name, style: $styles.text.titleMediumBold),
          ],
        ),
      ),
    );
  }
}
