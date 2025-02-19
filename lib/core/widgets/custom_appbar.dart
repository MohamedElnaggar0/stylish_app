import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      this.title,
      this.midIcon,
      this.startIcon,
      this.endIcon,
      this.onTap,
      this.firstOnTap});
  final String? title;
  final String? startIcon;
  final String? midIcon;
  final String? endIcon;
  final VoidCallback? firstOnTap;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: firstOnTap,
              child: startIcon != null
                  ? SvgPicture.asset(startIcon!)
                  : const SizedBox()),
          midIcon != null
              ? SvgPicture.asset(midIcon!)
              : Text(
                  title ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          GestureDetector(
            onTap: onTap,
            child: endIcon != null
                ? Image.asset(
                    endIcon!,
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
