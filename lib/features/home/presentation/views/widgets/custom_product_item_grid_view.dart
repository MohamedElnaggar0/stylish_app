import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_product_item.dart';

class CustomProductItemGridView extends StatelessWidget {
  const CustomProductItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            MediaQuery.of(context).size.height *
            1.37,
      ),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomProductItem(),
        );
      },
    );
  }
}
