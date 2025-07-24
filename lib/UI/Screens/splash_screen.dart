// class OnboardingScreen {

// }

import 'package:duollance_mobile_frontend/UI/Screens/onboarding_screen.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/UI/components/onboarding_bottom_widget.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Future.delayed(
          5.seconds,
          () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OnboardingScreen(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryColor,
      body: SafeArea(
        child: Center(
          child: FancyContainer(
            height: 100,
            width: 100,
            radius: 0,
            // backgroundColor: Colors.red,
            child: Image.asset(
              "assets/images/doullance_logo.png",
              // "assets/images/onbord_image_1.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          // FancyText("AfterOnboardScreen"),
        ),
      ),
    );
  }

  Stack _buildContent(Map details) {
    return Stack(
      children: [
        FancyContainer(
          height: double.infinity,
          width: double.infinity,
          radius: 0,
          backgroundColor: Colors.red,
          child: Image.asset(
            details["image"],
            // "assets/images/onbord_image_1.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }

  _goToAfterOnbaordingScreen() {
    // return
  }
}
