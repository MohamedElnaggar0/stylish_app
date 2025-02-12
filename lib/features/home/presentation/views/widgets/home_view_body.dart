import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/core/widgets/sort_and_filter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Column(
        children: [
          SizedBox(height: 30),
          CustomAppbar(),
          CustomTextFeild(
            hintText: 'Search any Product',
            prefixIcon: Icons.search,
            suffixIcon: Icons.mic,
          ),
          SizedBox(height: 20),
          SortAndFilter(
            text: 'All Featured',
          ),
        ],
      ),
    );
  }
}
