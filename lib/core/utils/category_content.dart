import 'package:stylish_app/core/utils/assets.dart';

class CategoryContent {
  final String image, title;
  CategoryContent({required this.image, required this.title});

  static List<CategoryContent> categoryContent = [
    CategoryContent(
      image: AssetsData.beauty,
      title: 'Beauty',
    ),
    CategoryContent(
      image: AssetsData.fashion,
      title: 'Fashion',
    ),
    CategoryContent(
      image: AssetsData.kids,
      title: 'Kids',
    ),
    CategoryContent(
      image: AssetsData.mens,
      title: 'Mens',
    ),
    CategoryContent(
      image: AssetsData.womens,
      title: 'Womens',
    ),
  ];
}
