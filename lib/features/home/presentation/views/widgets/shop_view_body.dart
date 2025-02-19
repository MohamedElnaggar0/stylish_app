import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomAppbar(
              endIcon: Assets.images.cart.path,
              onTap: () {
                GoRouter.of(context).push(AppRouter.kCartView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
