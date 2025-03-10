import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key, this.realPrice, this.salePrice});
  final String? realPrice;
  final String? salePrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: 100.w,
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
                Text(
                  'Women Printed Kurta',
                  style: TextStyle(
                    fontSize: 12.spMin,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Neque porro quisquam est qui dolorem ipsum quia',
                  style: TextStyle(
                    fontSize: 10.spMin,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '₹1500',
                  style: TextStyle(
                    fontSize: 12.spMin,
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
