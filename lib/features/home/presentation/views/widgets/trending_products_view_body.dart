import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/core/widgets/sort_and_filter.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/custom_product_item_grid_view.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class TrendingProductsViewBody extends StatelessWidget {
  const TrendingProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomAppbar(
              startIcon: Assets.svg.menu,
              midIcon: Assets.svg.logo,
              endIcon: Assets.images.profile.path,
              onTap: () {
                GoRouter.of(context).push(AppRouter.kProfileView);
              },
            ),
            const CustomTextFeild(
                hintText: 'Search any Product',
                prefixIcon: Icons.search,
                suffixIcon: Icons.mic),
            const SizedBox(height: 20),
            const SortAndFilter(
              text: '52,082+',
              text2: 'Items',
            ),
            const SizedBox(height: 15),
            const CustomProductItemGridView(),
          ],
        ),
      ),
    );
  }
}
