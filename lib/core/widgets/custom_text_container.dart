import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/widgets/custom_container_with_border.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CustomTextContainer extends StatelessWidget {
  const CustomTextContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deal of the Day',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        height: 20,
                        width: 20,
                        Assets.svg.alarm,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '22h 55m 20s remaining',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade300),
                      ),
                    ],
                  )
                ]),
            CustomContainerWithBorder(
              text: 'View All',
            ),
          ],
        ),
      ),
    );
  }
}
