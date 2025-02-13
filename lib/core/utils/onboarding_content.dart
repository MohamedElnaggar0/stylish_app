import 'package:stylish_app/core/gen/assets.gen.dart';

class OnboardingContent {
  final String title;
  final String description;
  final String image;

  OnboardingContent({
    required this.title,
    required this.description,
    required this.image,
  });

  static List<OnboardingContent> onboardingContent = [
    OnboardingContent(
      title: 'Choose Products',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: Assets.svg.onboarding1,
    ),
    OnboardingContent(
      title: 'Make Payment',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: Assets.svg.onboarding2,
    ),
    OnboardingContent(
      title: 'Get Your Order',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: Assets.svg.onboarding3,
    ),
  ];
}
