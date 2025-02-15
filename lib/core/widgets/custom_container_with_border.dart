import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CustomContainerWithBorder extends StatelessWidget {
  const CustomContainerWithBorder({super.key});

  @override
  Widget build(BuildContext context) {
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
