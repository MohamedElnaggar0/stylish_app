import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';

class CustomTextAndTextfeild extends StatelessWidget {
  const CustomTextAndTextfeild(
      {super.key, required this.hintText, required this.text});
  final String hintText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextFeild(
          hintText: hintText,
        ),
      ],
    );
  }
}
