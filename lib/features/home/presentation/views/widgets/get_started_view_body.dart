import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/utils/assets.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(AssetsData.getStarted),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          const Spacer(),
          const Text(
            '     You want\nAuthentic, here\n       you go!',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'Find it here , buy it now!',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 30),
          CustomButton(
              text: 'Get Started',
              onTap: () {
                GoRouter.of(context).go(AppRouter.kHomeView);
              })
        ]),
      ),
    );
  }
}
