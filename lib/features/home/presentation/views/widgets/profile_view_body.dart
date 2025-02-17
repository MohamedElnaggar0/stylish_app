import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppbar(
            startIcon: Assets.svg.back,
            onTap: () {
              GoRouter.of(context).pop();
            },
            title: 'Checkout',
          ),
        ],
      ),
    );
  }
}
