import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      this.title,
      this.midIcon,
      required this.startIcon,
      this.endIcon,
      this.onTap});
  final String? title;
  final String startIcon;
  final String? midIcon;
  final String? endIcon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(startIcon),
          midIcon != null
              ? SvgPicture.asset(midIcon!)
              : Text(
                  title ?? '',
                  style: const TextStyle(fontSize: 20),
                ),
          GestureDetector(
            onTap: onTap,
            child: endIcon != null ? Image.asset(endIcon!) : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
