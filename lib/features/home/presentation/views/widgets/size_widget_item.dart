import 'package:flutter/material.dart';
import 'package:stylish_app/constansts.dart';

class SizeWidgetItem extends StatelessWidget {
  const SizeWidgetItem(
      {super.key,
      required this.textSize,
      required this.color,
      this.onTap,
      required this.textColor});
  final String textSize;
  final Color color;
  final Color textColor;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: textColor,
          border: Border.all(width: 1, color: kPrimaryColor),
        ),
        child: Center(
            child: Text(
          textSize,
          style: TextStyle(color: color),
        )),
      ),
    );
  }
}
