import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/core/widgets/sort_and_filter.dart';

class TrendingProductsViewBody extends StatelessWidget {
  const TrendingProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
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
      ],
    );
  }
}
