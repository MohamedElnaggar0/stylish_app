import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30),
        CustomAppbar(),
      ],
    );
  }
}
