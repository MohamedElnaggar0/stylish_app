import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          startIcon: Assets.svg.menu,
          midIcon: Assets.svg.logo,
          endIcon: Assets.images.profile.path,
          onTap: () {
            GoRouter.of(context).push(AppRouter.kProfileView);
          },
        ),
        const CustomTextFeild(
          hintText: 'Search Product',
          prefixIcon: Icons.search,
        ),
      ],
    );
  }
}
