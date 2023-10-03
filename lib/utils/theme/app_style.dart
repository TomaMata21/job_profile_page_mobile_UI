import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final $styles = AppStyle();

@immutable
class AppStyle {
  late final AppColors colors = AppColors();
  late final AppText text = AppText();
  late final AppInsets insets = AppInsets();
  late final AppDuration durations = AppDuration();
}

@immutable
class AppText {
  late final headlineLarge = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );
  late final bodyMedium = TextStyle(
    color: $styles.colors.black,
    fontSize: 14.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final headlineMedium = TextStyle(
    color: $styles.colors.black,
    fontSize: 20.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  late final bodySmall = TextStyle(
    color: $styles.colors.black,
    fontSize: 10.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final titleSmall = TextStyle(
    color: $styles.colors.black,
    fontSize: 14.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final numStyle = TextStyle(
    color: $styles.colors.white,
    fontSize: 65.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final labelSmall = TextStyle(
    color: $styles.colors.white,
    fontSize: 11,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final labelSmallBold = TextStyle(
    color: $styles.colors.black,
    fontSize: 11.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final bodyLarge = TextStyle(
    color: $styles.colors.black,
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final bodyLargeBold = TextStyle(
    color: $styles.colors.black,
    fontSize: 16.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final titleMedium = TextStyle(
    color: $styles.colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  late final titleMediumBold = TextStyle(
    color: $styles.colors.black,
    fontSize: 20.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  late final numStyleMedium = TextStyle(
    color: $styles.colors.primary,
    fontSize: 19.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  late final numStyleLight = TextStyle(
    color: $styles.colors.primary,
    fontSize: 20.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  late final labelLarge = TextStyle(
    color: $styles.colors.white,
    fontSize: 15,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  late final houseText = TextStyle(
    color: $styles.colors.black,
    fontSize: 13,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

@immutable
class AppColors {
  late final white = const Color(0xFFFFFFFF);
  late final primary = const Color(0xFFEF4637);
  late final primaryText = const Color(0xFFDF3222);
  late final lightPrimary = const Color(0xFFFDEDEB);
  late final black = const Color(0xFF1A1A1A);
  late final switchButtonColor = const Color(0xFF412420);
}

@immutable
class AppDuration {
  final fast = const Duration(milliseconds: 300);
}

@immutable
class AppInsets {
  late final double xxxxxs = 1.sp;
  late final double xxxxs = 2.sp;
  late final double xxxs = 4.sp;
  late final double xxs = 6.sp;
  late final double xs = 8.sp;
  late final double s = 10.sp;
  late final double ss = 12.sp;
  late final double sm = 16.sp;
  late final double m = 20.sp;
  late final double md = 24.sp;
  late final double lg = 32.sp;
  late final double sl = 40.sp;
  late final double xl = 48.0.sp;
  late final double xxl = 60.sp;
  late final double xxxl = 64.sp;
}
