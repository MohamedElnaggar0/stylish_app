import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/sort_and_filter.dart';
import 'package:stylish_app/core/widgets/start_rating.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/custom_product_item_grid_view.dart';
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
            price(),
            const SizedBox(
              height: 5,
            ),
            productDetails(),
            const SizedBox(
              height: 15,
            ),
            deliveryContainer(),
            const SizedBox(
              height: 15,
            ),
            const SortAndFilter(
              text: 'Similar To\n',
              text2: '282+ Iteams ',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomProductItemGridView(),
          ],
        ),
      ),
    );
  }

  Widget price() {
    return Row(
      children: [
        const Text(
          '₹2,999',
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '\$3400',
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '50% off',
          style: TextStyle(fontSize: 15, color: kPrimaryColor),
        ),
      ],
    );
  }

  Widget productDetails() {
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: 'Product Details\n',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text:
                'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the\n ...More',
          ),
        ],
      ),
    );
  }

  Widget deliveryContainer() {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFFCCD5)),
      child: const Padding(
        padding: EdgeInsets.only(top: 12.0, bottom: 12, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivry in',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '1 within Hour',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
