import 'package:stylish_app/core/utils/assets.dart';

class OnboardingContent {
  final String title;
  final String description;
  final String image;
  final String buttonText;

  OnboardingContent(
      {required this.title,
      required this.description,
      required this.image,
      required this.buttonText});

  static List<OnboardingContent> onboardingContent = [
    OnboardingContent(
      title: 'Choose Products',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: AssetsData.onboarding_1,
      buttonText: 'Next',
    ),
    OnboardingContent(
      title: 'Make Payment',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: AssetsData.onboarding_2,
      buttonText: 'Next',
    ),
    OnboardingContent(
      title: 'Get Your Order',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      image: AssetsData.onboarding_3,
      buttonText: 'Get Started',
    ),
  ];
}
