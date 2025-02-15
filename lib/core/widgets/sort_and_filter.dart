import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_sort_filter_container.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class SortAndFilter extends StatelessWidget {
  const SortAndFilter({super.key, required this.text, this.text2});
  final String text;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: text2,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Spacer(),
          CustomSortFilterContainer(
            text: 'sort',
            svgImage: Assets.svg.upDownArrow,
          ),
          const SizedBox(width: 10),
          CustomSortFilterContainer(
            text: 'filter',
            svgImage: Assets.svg.filter,
          ),
        ],
      ),
    );
  }
}
