import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/category_content.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.categories});
  final List<CategoryContent> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(
            image: categories[index].image,
            text: categories[index].title,
          );
        },
      ),
    );
  }
}
