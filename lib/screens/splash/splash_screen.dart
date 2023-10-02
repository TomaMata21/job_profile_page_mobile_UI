import 'package:flutter/material.dart';
import 'package:job_ui_app/screens/profile/profile_screen.dart';

import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: Center(
        child: Text(
          LocalString.splashText,
          textAlign: TextAlign.center,
          style: $styles.text.headlineLarge.copyWith(
            color: $styles.colors.primary,
          ),
        ),
      ),
    );
  }
}
