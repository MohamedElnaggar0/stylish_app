import 'package:flutter/material.dart';
import 'package:stylish_app/constansts.dart';

class CustomLoginIcon extends StatelessWidget {
  const CustomLoginIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: kPrimaryColor,
      child: CircleAvatar(
        radius: 39,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Center(
          child: Image(image: AssetImage(image)),
        ),
      ),
    );

    // Container(
    //   height: 75,
    //   width: 75,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(50),
    //   ),
    //   child: Container(
    //     width: 70,
    //     height: 70,
    //     decoration: BoxDecoration(
    //       color: kPrimaryColor,
    //       borderRadius: BorderRadius.circular(50),
    //     ),
    //     child: Center(
    //       child: Image(image: AssetImage('assets/images/google.png')),
    //     ),
    //   ),
    // );
  }
}
