// class OnboardingScreen {

// }

import 'package:duollance_mobile_frontend/UI/Screens/sign_up_page.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/UI/components/onboarding_bottom_widget.dart';
import 'package:flutter/material.dart';

class AfterOnboardScreen extends StatefulWidget {
  const AfterOnboardScreen({super.key});

  @override
  State<AfterOnboardScreen> createState() => _AfterOnboardScreenState();
}

class _AfterOnboardScreenState extends State<AfterOnboardScreen> {
  List<Map> onboardingDetail = [
    {
      "image": "assets/images/onbord_image_1.png",
      "headerText": "",
      "subText": "",
    }
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SignUpPage();
    // Scaffold(
    //   body: SafeArea(
    //     child: Center(
    //       child: FancyText("AfterOnboardScreen"),
    //     ),
    //   ),
    // );
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
        Align(
          alignment: Alignment.bottomCenter,
          child: OnboardingBottomWidget(
            subText: details["subText"],
            // "Find top talents, land great jobs. We connect skilled freelancers with forward-thinking clients and companies",
            headerText: details["headerText"],
            buttonAction: () {
              if (currentIndex != onboardingDetail.length - 1) {
                currentIndex += 1;
                setState(() {});
              } else {
                _goToAfterOnbaordingScreen();
              }
            },
            buttonLabel: (currentIndex != onboardingDetail.length - 1)
                ? "Next"
                : "Get Started",
            // "Welcome to Duollance",
          ),
        )
      ],
    );
  }

  _goToAfterOnbaordingScreen() {
    // return
  }
}
