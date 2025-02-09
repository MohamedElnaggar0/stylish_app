import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/onboarding_content.dart';

import 'package:stylish_app/features/onboarding/presentation/views/widgets/custom_onboarding_container.dart';

import '../../../../../constansts.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key, required this.onboardingContent});
  final List<OnboardingContent> onboardingContent;

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomOnBoardingContainer(
                  onboardingContent: widget.onboardingContent[index]),
              dotPage(),
            ],
          );
        },
        itemCount: widget.onboardingContent.length);
  }

  Row dotPage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < widget.onboardingContent.length; i++)
          Container(
            margin: const EdgeInsets.all(4),
            width: currentIndex == i ? 20 : 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: currentIndex == i ? kPrimaryColor : Colors.grey.shade400,
            ),
          ),
      ],
    );
  }
}
