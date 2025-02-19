import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppbar(
              startIcon: Assets.svg.back,
              title: 'Checkout',
            ),
            deliveryAddress(context),
          ],
        ),
      ),
    );
  }

  Widget deliveryAddress(context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Assets.svg.location,
              height: 20,
              width: 20,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 10),
            Text(
              'Delivery Address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3,
                        offset: Offset(0, 5))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address:',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      '216 St Paul\'s Rd, London N1 2LL, UK',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      'Contact : +44-784232',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            addContainer(context),
          ],
        ),
      ],
    );
  }

  Widget addContainer(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3,
                offset: Offset(0, 5))
          ]),
      child: Center(
        child: SvgPicture.asset(Assets.svg.add),
      ),
    );
  }
}
