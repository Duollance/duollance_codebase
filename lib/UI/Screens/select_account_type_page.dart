import 'package:duollance_mobile_frontend/UI/Screens/generic_bg.dart';
import 'package:duollance_mobile_frontend/UI/Screens/generic_bg_2.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/globals/functions/app_theme.dart';
import 'package:duollance_mobile_frontend/globals/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAccountTypePage extends StatefulWidget {
  const SelectAccountTypePage({super.key});

  @override
  State<SelectAccountTypePage> createState() => _SelectAccountTypePageState();
}

class _SelectAccountTypePageState extends State<SelectAccountTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTextStyle(
        style: GoogleFonts.manrope(),
        child: SafeArea(
          child: Stack(
            children: [
              const GenericBg2(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FancyContainer(
                          height: 50,
                          width: 50,
                          radius: 0,
                          // backgroundColor: Colors.red,
                          child: Image.asset(
                            "assets/images/doullance_logo.png",
                            // "assets/images/onbord_image_1.png",
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(height: 5),
                        FancyText(
                          "Welcome to Duollance",
                          textColor: Colors.white,
                          size: 20,
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(height: 5),
                        FancyText(
                          "Let’s get to know you better",
                          textColor: Colors.white70,
                          size: 13,
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    FancyText(
                      "How do you want to use \nDuollance?",
                      // textColor: Colors.white,
                      size: 16,
                      // weight: FontWeight.bold,
                    ),
                    const SizedBox(height: 30),
                    FancyText(
                      "As a",
                      // textColor: Colors.white,
                      size: 14,
                      // weight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          fillColor:
                              WidgetStatePropertyAll(AppTheme().primaryColor),
                          value: "Client/Company",
                          groupValue: selectedOptions,
                          onChanged: (value) {
                            selectedOptions = value;
                            setState(() {});
                          },
                        ),
                        FancyText(
                          "Client/Company",
                          // textColor: Colors.white,
                          size: 14,
                          // weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          fillColor:
                              WidgetStatePropertyAll(AppTheme().primaryColor),
                          value: "Freelancer",
                          groupValue: selectedOptions,
                          onChanged: (value) {
                            selectedOptions = value;
                            setState(() {});
                          },
                        ),
                        FancyText(
                          "Freelancer",
                          // textColor: Colors.white,
                          size: 14,
                          // weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Spacer(),
                    AspectRatio(
                      aspectRatio: 343 / 45,
                      child: FancyContainer(
                        width: double.infinity,
                        height: 55,
                        backgroundColor: AppTheme().primaryColor,
                        radius: 7,
                        action: () {
                          // Handle Get Started button tap
                        },
                        child: FancyText(
                          "Continue",
                          textColor: Colors.white,
                          size: 12,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? selectedOptions;

  AspectRatio _buildOtherSignUpPage({
    required String imagePath,
    required String label,
    required Function() action,
  }) {
    return AspectRatio(
      aspectRatio: 343 / 40,
      child: FancyContainer(
        width: double.infinity,
        height: 50,
        backgroundColor: Colors.white,
        borderColor: Colors.grey[300],
        hasBorder: true,
        radius: 7,
        action: () {
          // Handle Sign up with Google
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                imagePath,
                // 'assets/images/sign_up_logo-google.png', // Replace with your actual Google logo path
              ),
            ),
            const SizedBox(width: 10),
            FancyText(
              label,
              textColor: Colors.black,
              size: 12,
              weight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }

  Column _buildInputField(String label) {
    return Column(
      // mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          label,
          // "Email",
          // textColor: getFigmaColor("949494"),
          size: 14,
          // weight: FontWeight.w600,
        ),
        const SizedBox(height: 4),
        AspectRatio(
          aspectRatio: 343 / 45,
          child: FancyContainer(
            // backgroundColor: Colors.grey[200],
            hasBorder: true,
            borderColor: getFigmaColor("949494"),
            radius: 8,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),

            child: TextField(
              decoration: InputDecoration(
                hintText: label,
                //  "Email Address",
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: getFigmaColor("999999"),
                ),
                border: InputBorder.none,
                // fillColor: Colors.red,
                // filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 15,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
        ),
      ],
    );
  }
}
