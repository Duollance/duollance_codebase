import 'package:duollance_mobile_frontend/UI/Screens/generic_bg.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_container.dart';
import 'package:duollance_mobile_frontend/UI/components/fancy_text.dart';
import 'package:duollance_mobile_frontend/globals/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTextStyle(
        style: GoogleFonts.manrope(),
        child: SafeArea(
          child: Stack(
            children: [
              GenericBg(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              "Sign Up",
                              textColor: Colors.white,
                              size: 20,
                              weight: FontWeight.bold,
                            ),
                            const SizedBox(height: 5),
                            FancyText(
                              "Get started with Duollance",
                              textColor: Colors.white70,
                              size: 13,
                            ),
                          ],
                        ),
                        const SizedBox(height: 80),
                        _buildInputField("Email"),
                        const SizedBox(height: 10),
                        _buildInputField("Password"),
                        const SizedBox(height: 20),
                        AspectRatio(
                          aspectRatio: 343 / 45,
                          child: FancyContainer(
                            width: double.infinity,
                            height: 55,
                            backgroundColor: const Color(0xFF4285F4),
                            radius: 7,
                            action: () {
                              // Handle Get Started button tap
                            },
                            child: FancyText(
                              "Get Started",
                              textColor: Colors.white,
                              size: 12,
                              weight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FancyText(
                              "Already a member?",
                              textColor: Colors.black,
                              size: 12,
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                // Handle Login tap
                              },
                              child: FancyText(
                                "Login",
                                textColor: Color(0xFF4285F4),
                                size: 13,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: FancyText(
                            "Or",
                            textColor: Colors.black,
                            size: 14,
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildOtherSignUpPage(
                            action: () {},
                            imagePath: 'assets/images/sign_up_logo-google.png',
                            label: "Sign up with Google"),
                        const SizedBox(height: 15),
                        _buildOtherSignUpPage(
                            action: () {},
                            imagePath: 'assets/images/sign_up_logo-apple.png',
                            label: "Sign up with Apple"),
                        const SizedBox(height: 15),
                        _buildOtherSignUpPage(
                            action: () {},
                            imagePath:
                                'assets/images/sign_up_logo-facebook.png',
                            label: "Sign up with Facebook"),
                        const SizedBox(height: 10),
                        // const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                contentPadding: EdgeInsets.symmetric(
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
