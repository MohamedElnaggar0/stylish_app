import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/widgets/custom_container_with_border.dart';

class CustomTextContainer extends StatelessWidget {
  const CustomTextContainer(
      {super.key,
      required this.color,
      required this.text,
      required this.svgImage,
      required this.dateOrTime});
  final Color color;
  final String text;
  final String svgImage;
  final String dateOrTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 16.spMin, color: Colors.white),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        height: 20,
                        width: 20,
                        svgImage,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        dateOrTime,
                        style: TextStyle(
                            fontSize: 12.spMin, color: Colors.grey.shade300),
                      ),
                    ],
                  )
                ]),
            const CustomContainerWithBorder(
              text: 'View All',
            ),
          ],
        ),
      ),
    );
  }
}
