import 'package:flutter/material.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class ProductShowItem extends StatelessWidget {
  const ProductShowItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(Assets.images.snekers.path),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
