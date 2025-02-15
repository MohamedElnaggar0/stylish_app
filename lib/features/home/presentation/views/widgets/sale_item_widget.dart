import 'package:flutter_svg/flutter_svg.dart';
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
          child: _textItemContent(context),
        ),
      ],
    );
  }

  Widget _textItemContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '40-50% OFF',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Now in (product)\nAll colours',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _shopNow(context),
        ],
      ),
    );
  }

  Widget _shopNow(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Shop Now ',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SvgPicture.asset(Assets.svg.arrow),
        ],
      ),
    );
  }
}
