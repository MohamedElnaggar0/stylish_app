import 'package:stylish_app/core/widgets/custom_container_with_border.dart';
import 'package:stylish_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SaleItemWidget extends StatelessWidget {
  const SaleItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                Assets.images.saleImage.path,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              _textItemContent(context),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          dotPage(Colors.grey.shade400),
          dotPage(const Color(0xffFFA3B3)),
          dotPage(Colors.grey.shade400)
        ])
      ],
    );
  }

  Widget _textItemContent(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '40-50% OFF',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'Now in (product)\nAll colours',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomContainerWithBorder(
            text: 'Shop Now',
          ),
        ],
      ),
    );
  }

  Widget dotPage(Color? color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: color,
          ),
        ),
      ],
    );
  }
}
