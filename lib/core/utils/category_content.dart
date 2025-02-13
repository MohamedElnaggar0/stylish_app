import 'package:stylish_app/core/gen/assets.gen.dart';

class CategoryContent {
  final String image, title;
  CategoryContent({required this.image, required this.title});

  static List<CategoryContent> categoryContent = [
    CategoryContent(
      image: Assets.images.beauty.path,
      title: 'Beauty',
    ),
    CategoryContent(
      image: Assets.images.fashion.path,
      title: 'Fashion',
    ),
    CategoryContent(
      image: Assets.images.kids.path,
      title: 'Kids',
    ),
    CategoryContent(
      image: Assets.images.mens.path,
      title: 'Mens',
    ),
    CategoryContent(
      image: Assets.images.womens.path,
      title: 'Womens',
    ),
  ];
}
