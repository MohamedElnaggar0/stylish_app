import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerWithBorder extends StatelessWidget {
  const CustomContainerWithBorder({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 100.h,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 12.spMin),
          ),
          const SizedBox(width: 5),
          SvgPicture.asset(
            Assets.svg.arrow,
          ),
        ],
      ),
    );
  }
}
