import 'package:flutter/material.dart';
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
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      height: 24,
      width: 70,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(width: 5),
            SvgPicture.asset(svgImage)
          ],
        ),
      ),
    );
  }
}
