import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:stylish_app/core/utils/onboarding_content.dart';

class CustomOnBoardingContainer extends StatelessWidget {
  final OnboardingContent onboardingContent;
  const CustomOnBoardingContainer({
    super.key,
    required this.onboardingContent,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          SvgPicture.asset(onboardingContent.image),
          Text(
            onboardingContent.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            onboardingContent.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
