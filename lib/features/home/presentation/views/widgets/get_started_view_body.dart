import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.getStarted.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          const Spacer(),
          Text(
            '     You want\nAuthentic, here\n       you go!',
            style: TextStyle(
                fontSize: 20.spMin,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          20.verticalSpace,
          Text(
            'Find it here , buy it now!',
            style: TextStyle(fontSize: 15.spMin, color: Colors.white),
          ),
          30.verticalSpace,
          CustomButton(
              text: 'Get Started',
              onTap: () {
                GoRouter.of(context).go(AppRouter.kBottoNavBar);
              })
        ]),
      ),
    );
  }
}
