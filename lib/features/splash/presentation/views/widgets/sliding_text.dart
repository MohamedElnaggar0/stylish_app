import 'package:flutter/material.dart';
import 'package:stylish_app/constansts.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> slidingAnimation;

  const SlidingText({super.key, required this.slidingAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Stylish',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          );
        });
  }
}
