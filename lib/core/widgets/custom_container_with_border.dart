import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CustomContainerWithBorder extends StatelessWidget {
  const CustomContainerWithBorder({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width * 0.31,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            Assets.svg.arrow,
          ),
        ],
      ),
    );
  }
}
