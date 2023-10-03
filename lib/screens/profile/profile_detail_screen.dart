import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constants/assets.dart';
import '../../utils/constants/data.dart';
import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import 'widgets/custom_switch_button.dart';
import 'widgets/detail_info.dart';
import 'widgets/job_content.dart';
import 'widgets/line_info.dart';
import 'widgets/num_item.dart';
import 'widgets/price_range_item.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 50.w,
            bottom: 55.h,
            child: Container(
              decoration: BoxDecoration(
                color: $styles.colors.lightPrimary,
              ),
            ),
          ).animate().fade(),
          Positioned(
            top: 5.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: $styles.insets.xs),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: $styles.colors.primary,
                    ),
                  ),
                  Text(
                    LocalString.profile,
                    style: $styles.text.bodyLargeBold,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 0,
            right: 0,
            bottom: 55.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25.w,
                        width: 25.w,
                        padding: EdgeInsets.all($styles.insets.xxxs),
                        decoration: BoxDecoration(
                          color: $styles.colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          Assets.profile,
                        ),
                      ),
                      Gap($styles.insets.xs),
                      Text(
                        user.fullName,
                        style: $styles.text.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: $styles.insets.xs),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LineInfo(
                          label: LocalString.profession,
                          value: user.profession,
                        ),
                        LineInfo(
                          label: LocalString.contact,
                          value: user.contact,
                        ),
                        LineInfo(
                          label: LocalString.location,
                          value: user.location,
                        ),
                        CustomSwitchButton(
                          value: user.position,
                          label: LocalString.position,
                          onChanged: (value) => setState(() {
                            user.position = value;
                          }),
                        ),
                      ],
                    ).animate().fadeIn(
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.fastOutSlowIn,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 45.h,
            left: 0,
            right: 0,
            bottom: 40.h,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: $styles.insets.xxxs),
                  child: Text(
                    LocalString.jobsDone,
                    textAlign: TextAlign.center,
                    style: $styles.text.titleSmall,
                  ),
                ),
                Expanded(
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    physics: const BouncingScrollPhysics(),
                    children: List.generate(3, (index) => const JobContent()),
                  ),
                ),
                // Container(),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: $styles.colors.primary,
                    dotColor: $styles.colors.lightPrimary,
                    dotWidth: 12,
                    dotHeight: 12,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 75.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: $styles.colors.lightPrimary,
            ),
          ),
          Positioned(
            top: 62.h,
            left: 0,
            right: 10.w,
            bottom: 0,
            child: Container(
              color: $styles.colors.primary,
              padding: EdgeInsets.symmetric(
                horizontal: $styles.insets.xs,
                vertical: $styles.insets.xs,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NumItem(
                        value: statistics.average.toString(),
                        label: LocalString.averageRating,
                      ),
                      NumItem(
                        value: statistics.completed.toString(),
                        label: LocalString.jobCompleted,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PayRangePrice(),
                      NumItem(
                        value: "0${statistics.onGoing.toString()}",
                        label: LocalString.onGoing,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DetailsInfo(
                        label: LocalString.availability,
                        value: statistics.availability,
                      ),
                      DetailsInfo(
                        label: LocalString.service,
                        value: statistics.service,
                      ),
                      DetailsInfo(
                        label: LocalString.quality,
                        value: statistics.quality,
                      ),
                    ],
                  ),
                ],
              ),
            ).animate().slideX(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.fastOutSlowIn,
                  delay: const Duration(milliseconds: 400),
                ),
          ),
        ],
      ),
    );
  }
}
