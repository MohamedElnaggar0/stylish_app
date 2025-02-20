import 'package:flutter/material.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/product_show_item.dart';

class ProductShow extends StatefulWidget {
  const ProductShow({super.key});

  @override
  State<ProductShow> createState() => _ProductShowState();
}

class _ProductShowState extends State<ProductShow> {
  int itemCount = 5;
  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.27,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            controller: PageController(initialPage: currentIndex),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: ProductShowItem(),
              );
            },
          ),
        ),
        dotPage(),
      ],
    );
  }

  Widget dotPage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < itemCount; i++)
          Container(
            margin: const EdgeInsets.all(4),
            width: currentIndex == i ? 10 : 8,
            height: currentIndex == i ? 10 : 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: currentIndex == i ? kPrimaryColor : Colors.grey.shade400,
            ),
          ),
      ],
    );
  }
}
