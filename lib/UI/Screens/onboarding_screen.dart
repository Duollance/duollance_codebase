// class OnboardingScreen {

// }

import 'package:duollance_mobile_frontend/UI/Screens/after_onboard_screen.dart';
import 'package:duollance_mobile_frontend/UI/Screens/splash_screen.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/UI/components/onboarding_bottom_widget.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:duollance_mobile_frontend/globals/functions/functions.dart';
import 'package:duollance_mobile_frontend/globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map> onboardingDetail = [
    {
      "image": "assets/images/onbord_image_1.png",
      "headerText": "Welcome to Duollance",
      "subText":
          "Find top talents, land great jobs. We connect skilled freelancers with forward-thinking clients and companies",
    },
    {
      "image": "assets/images/onbord_image_2.png",
      "headerText": "Your skills. Endless opportunities",
      "subText":
          "Showcase your talent, get discovered and recommended by our HR, land jobs that matches your vibe really fast and fair without stress",
    },
    {
      "image": "assets/images/onbord_image_3.png",
      "headerText": "Smart hiring starts here",
      "subText":
          "Streamline your recruitment process as an HR with our AI-matched talent, with automated workflows that cut the stress and make your hiring process easy ",
    },
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: onboardingDetail.length,
              itemBuilder: (_, index) {
                return _buildContent(
                  onboardingDetail[index],
                );
              },
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
            ),
            // Align(
            //   alignment: Alignment(0, .5),
            //   child: SmoothPageIndicator(
            //       controller: controller, // PageController
            //       count: onboardingDetail.length,
            //       effect: ExpandingDotsEffect(
            //         dotHeight: 20,
            //         dotWidth: 20,
            //       ), // your preferred effect
            //       onDotClicked: (index) {}),
            // ),
          ],
        ),
        // SizedBox()
      ),
    );
  }

  PageController controller = PageController();
  Stack _buildContent(Map details) {
    return Stack(
      children: [
        FancyContainer(
          height: double.infinity,
          width: double.infinity,
          radius: 0,
          // backgroundColor: Colors.red,
          child: Image.asset(
            details["image"],
            // "assets/images/onbord_image_1.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: "SmoothPageIndicator",
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: onboardingDetail.length,
                    effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: AppTheme().primaryColor,
                        dotColor:
                            getFigmaColor("D9D9D9")), // your preferred effect
                    onDotClicked: (index) {}),
              ),
              OnboardingBottomWidget(
                subText: details["subText"],
                // "Find top talents, land great jobs. We connect skilled freelancers with forward-thinking clients and companies",
                headerText: details["headerText"],
                buttonAction: () {
                  if (currentIndex != onboardingDetail.length - 1) {
                    print("object");
                    print("object-before-currentIndex>>${currentIndex}");
                    currentIndex += 1;
                    // controller.
                    // controller.animateTo(currentIndex / 1,
                    //     duration: 2.seconds, curve: Curves.bounceInOut);
                    controller.nextPage(
                        duration: .5.seconds, curve: Curves.easeIn);
                    print("object-after-currentIndex>>${currentIndex}");
                    print("object-done");
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
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 30,
                  child: Image.asset("assets/images/doullance_text_logo.png")),
              FancyText(
                "Skip",
                action: () {
                  _goToAfterOnbaordingScreen();
                },
                isAsync: false,
                weight: FontWeight.bold,
                textColor: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }

  _goToAfterOnbaordingScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AfterOnboardScreen(),
      ),
    );
  }
}
