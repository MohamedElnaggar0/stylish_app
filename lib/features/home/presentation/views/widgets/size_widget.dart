import 'package:flutter/material.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/features/home/presentation/views/widgets/size_widget_item.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({super.key});

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  final List<String> size = ['7uk', '8uk', '9uk', '10uk', '11uk'];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size:${size[0]}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 31,
          child: ListView.builder(
              itemCount: size.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizeWidgetItem(
                      textSize: size[index],
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      color:
                          currentIndex == index ? Colors.white : kPrimaryColor,
                      textColor:
                          currentIndex == index ? kPrimaryColor : Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}
