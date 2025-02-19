import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/start_rating.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            CustomAppbar(
              startIcon: Assets.svg.back,
              firstOnTap: () => Navigator.pop(context),
              title: 'Checkout',
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 10),
            deliveryAddress(context),
            const SizedBox(
              height: 20,
            ),
            shoppingList(context),
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
            const SizedBox(width: 10),
            const Text(
              'Delivery Address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
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
                        offset: const Offset(0, 5))
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
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
            const SizedBox(
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
                offset: const Offset(0, 5))
          ]),
      child: Center(
        child: SvgPicture.asset(Assets.svg.add),
      ),
    );
  }

  Widget shoppingList(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Shopping List',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 500,
          width: double.infinity,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: productItemPrice(context),
                );
              }),
        ),
      ],
    );
  }

  Container productItemPrice(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 3,
              offset: const Offset(0, 5))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(Assets.images.jacket.path),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Men’s Casual Wear',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Variations:',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        colorButtom(text: 'Black'),
                        const SizedBox(
                          width: 5,
                        ),
                        colorButtom(text: 'Blue'),
                      ],
                    ),
                    const StarRating(),
                    const Text(
                      '\$34',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey.shade400,
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            totalPrice(),
          ],
        ),
      ),
    );
  }

  Widget colorButtom({required String text}) {
    return Container(
      height: 20,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), border: Border.all(width: 1)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  Widget totalPrice() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Order :',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '\$34',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
