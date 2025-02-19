import 'package:flutter/material.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key, this.realPrice, this.salePrice});
  final String? realPrice;
  final String? salePrice;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height * 0.30;
    double width = MediaQuery.of(context).size.width * 0.42;
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          const SizedBox(height: 2),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              Assets.images.jacket.path,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Women Printed Kurta',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Neque porro quisquam est qui dolorem ipsum quia',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '₹1500',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      realPrice ?? '',
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      salePrice ?? '',
                      style: TextStyle(color: kPrimaryColor),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
