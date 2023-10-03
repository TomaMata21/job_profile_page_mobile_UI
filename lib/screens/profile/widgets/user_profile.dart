import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/assets.dart';
import '../../../utils/constants/data.dart';
import '../../../utils/theme/app_style.dart';
import '../profile_detail_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileDetailScreen(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: $styles.insets.xs, horizontal: $styles.insets.s),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 18.w,
              width: 18.w,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: $styles.colors.lightPrimary,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                Assets.profile,
              ),
            ),
            Gap($styles.insets.s),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName,
                  style: $styles.text.titleMedium,
                ),
                Gap($styles.insets.xxxs),
                Text(
                  user.profession,
                  style: $styles.text.bodyMedium
                      .copyWith(color: $styles.colors.primaryText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
