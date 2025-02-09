import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/onboarding_content.dart';
import 'package:stylish_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
      ),
      body: OnboardingViewBody(
        onboardingContent: OnboardingContent.onboardingContent,
      ),
    );
  }
}
