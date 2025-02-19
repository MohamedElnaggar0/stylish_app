import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/trending_products_view_body.dart';

class TrendingProductsView extends StatelessWidget {
  const TrendingProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TrendingProductsViewBody(),
    );
  }
}
