import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(),
        CustomTextFeild(
          hintText: 'Search Product',
          prefixIcon: Icons.search,
        ),
      ],
    );
  }
}
