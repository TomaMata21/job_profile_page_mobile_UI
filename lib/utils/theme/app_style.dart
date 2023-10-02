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
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );

  late final headlineSmall = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );

  late final bodySmall = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );

  late final bodyMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );

  late final bodyLarge = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );

  late final labelLarge = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: $styles.colors.black,
  );

  late final subtitleSmall = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    color: $styles.colors.grey,
  );
}

@immutable
class AppColors {
  late final purple = const Color(0xFF8688BC);
  late final blue = const Color(0xFF7AA0DA);
  late final red = const Color(0xFFEB7777);
  late final grey = const Color(0xFFBBBBBB);
  late final lightGrey = const Color(0xFFF3F3F3);
  late final buttonGrey = const Color(0xFFB5B5B5);
  late final black = const Color(0xFF424347);
  late final deepBlack = const Color(0xFF3E3E3E);
  late final white = const Color(0xFFFFFFFF);
  late final iconGrey = const Color(0xFF979797);
  late final inactiveGrey = const Color(0xFFD8D8D8);
  late final activeGrey = const Color(0xFF989898);
  late final green = const Color(0xFF9FC78A);
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
