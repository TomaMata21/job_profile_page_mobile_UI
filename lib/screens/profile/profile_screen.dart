import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../utils/constants/assets.dart';
import '../../utils/constants/data.dart';
import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import 'widgets/add_worker_button.dart';
import 'widgets/balance_card.dart';
import 'widgets/master_card.dart';
import 'widgets/service_item.dart';
import 'widgets/user_profile.dart';
import 'widgets/worker_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: AppBar(
        backgroundColor: $styles.colors.white,
        elevation: 0,
        title: Text(
          LocalString.profile,
          style: $styles.text.bodyLargeBold,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: $styles.insets.ss),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all($styles.insets.xs),
                child: SvgPicture.asset(
                  Assets.filter,
                  height: 25,
                  width: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const UserProfile(),
            Gap($styles.insets.s),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BalanceCard(),
                Gap($styles.insets.ss),
                const MasterCard(),
              ],
            ),
            Gap($styles.insets.m),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 50.w,
                    child: Container(
                      color: $styles.colors.white,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 50.w,
                    right: 0,
                    child: Container(
                      color: $styles.colors.lightPrimary,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: $styles.insets.sm),
                            child: Text(
                              LocalString.houses,
                              style: $styles.text.bodyLarge,
                            ),
                          ),
                          SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const AddWorkerButton(),
                                ...workers.map(
                                  (e) => WorkerItem(
                                    worker: e,
                                    index: workers.indexOf(e),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap($styles.insets.xs),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: $styles.insets.sm),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  LocalString.services,
                                  style: $styles.text.bodyLargeBold,
                                ),
                                Text(
                                  LocalString.all,
                                  style: $styles.text.bodyLargeBold.copyWith(
                                    color: $styles.colors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap($styles.insets.xs),
                          ...services.map(
                            (e) => ServiceItem(service: e) ,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
