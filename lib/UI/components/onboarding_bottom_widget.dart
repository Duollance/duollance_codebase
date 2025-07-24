import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBottomWidget extends StatelessWidget {
  final String headerText;
  final String subText;
  final String? buttonLabel;
  final Function() buttonAction;

  const OnboardingBottomWidget(
      {super.key,
      required this.headerText,
      required this.subText,
      this.buttonLabel,
      required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return FancyContainer(
      // height: 200,
      gradient: LinearGradient(
        colors: [
          Colors.black,
          Colors.transparent,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            FancyText(
              headerText,
              // "Welcome to Duollance",
              textColor: Colors.white,
              size: 20,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            FancyText(
              subText,
              textColor: Colors.white,
              size: 10,
            ),
            const SizedBox(height: 10),
            // const Spacer(),
            AspectRatio(
              aspectRatio: 343 / 46,
              child: FancyContainer(
                width: double.infinity,
                height: 60,
                backgroundColor: AppTheme().primaryColor,
                radius: 10,
                action: buttonAction,
                child: FancyText(
                  buttonLabel ?? "Next",
                  textColor: Colors.white,
                  size: 16,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
