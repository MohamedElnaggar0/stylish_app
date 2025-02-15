import 'package:flutter/material.dart';

import 'package:stylish_app/core/utils/category_content.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_product_item.dart';
import 'package:stylish_app/core/widgets/custom_text_container.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/core/widgets/sort_and_filter.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/sale_item_widget.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/special_offers_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const CustomAppbar(),
            const CustomTextFeild(
              hintText: 'Search any Product',
              prefixIcon: Icons.search,
              suffixIcon: Icons.mic,
            ),
            const SizedBox(height: 20),
            const SortAndFilter(
              text: 'All Featured',
            ),
            const SizedBox(height: 15),
            CategoryListView(
              categories: CategoryContent.categoryContent,
            ),
            const SizedBox(height: 15),
            const SaleItemWidget(),
            const SizedBox(height: 15),
            CustomTextContainer(
              color: Color(0xff4392F9),
            ),
            const SizedBox(height: 15),
            customProductItemlistView(context),
            const SizedBox(height: 15),
            const SpecialOffersWidget(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget customProductItemlistView(context) {
    double hight = MediaQuery.of(context).size.height * 0.30;
    return SizedBox(
      height: hight,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomProductItem(),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
