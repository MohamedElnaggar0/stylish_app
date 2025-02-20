import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/start_rating.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/product_show.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/size_widget.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            CustomAppbar(
              endIcon: Assets.images.cart.path,
              onTap: () {
                GoRouter.of(context).push(AppRouter.kCartView);
              },
            ),
            const ProductShow(),
            const SizeWidget(),
            const SizedBox(height: 10),
            const Text(
              'Nike Sneakers',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Vision Alta Men’s Shoes Size (All Colours)',
              style: TextStyle(fontSize: 15),
            ),
            const Row(
              children: [
                StarRating(),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '56,890',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
