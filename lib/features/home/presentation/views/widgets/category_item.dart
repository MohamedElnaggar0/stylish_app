import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 39,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
