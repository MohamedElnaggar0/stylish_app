import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_product_item.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/core/widgets/sort_and_filter.dart';

class TrendingProductsViewBody extends StatelessWidget {
  const TrendingProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomAppbar(),
            CustomTextFeild(
                hintText: 'Search any Product',
                prefixIcon: Icons.search,
                suffixIcon: Icons.mic),
            const SizedBox(height: 20),
            const SortAndFilter(
              text: '52,082+',
              text2: 'Items',
            ),
            const SizedBox(height: 15),
            customProductItemGridView(context),
          ],
        ),
      ),
    );
  }

  Widget customProductItemGridView(context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.37,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomProductItem(),
        );
      },
    );
  }
}
