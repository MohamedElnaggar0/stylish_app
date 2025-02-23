import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSortFilterContainer extends StatelessWidget {
  const CustomSortFilterContainer(
      {super.key, required this.text, required this.svgImage});
  final String text;
  final String svgImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r), color: Colors.white),
      height: 25.h,
      width: 40.w,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 8.sp),
            ),
            5.horizontalSpace,
            SvgPicture.asset(svgImage)
          ],
        ),
      ),
    );
  }
}
