import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/onboarding_content.dart';

import 'package:stylish_app/features/onboarding/presentation/views/widgets/custom_onboarding_container.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key, required this.onboardingContent});
  final List<OnboardingContent> onboardingContent;
  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingContainer(onboardingContent: onboardingContent[0]);
  }
}
