import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/core/widgets/custom_text_and_textfeild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_password_text_feild.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

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
              onTap: () {
                GoRouter.of(context).pop();
              },
              title: 'Checkout',
            ),
            Stack(
              children: [
                buildImage(),
                buildEditIcon(),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            personalDetails(context),
            SizedBox(height: 25),
            businessAddressDetails(),
            SizedBox(height: 25),
            bankAccountDetails(),
            CustomButton(text: 'Save', onTap: () {}),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget buildImage({VoidCallback? onTap}) {
    final image = AssetImage(Assets.images.profileEdit.path);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          height: 120,
          width: 120,
          child: InkWell(
            onTap: onTap,
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon() {
    return Positioned(
      bottom: 0,
      right: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        padding: EdgeInsets.all(8),
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  Widget personalDetails(context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Details',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          CustomTextAndTextfeild(
              hintText: 'aashifa@gmail.com', text: 'Email Address'),
          SizedBox(height: 20),
          Text(
            'Password',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
          CustomPasswordTextFeild(
              hintText: '***********', suffixIcon: Icons.visibility),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).goNamed(AppRouter.kForgetPasswordView);
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Change Password',
                style: TextStyle(fontSize: 14, color: kPrimaryColor),
              ),
            ),
          ),
          SizedBox(height: 25),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }

  Widget businessAddressDetails() {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Business Address Details',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          CustomTextAndTextfeild(hintText: 'Pincode', text: '450116'),
          SizedBox(height: 20),
          CustomTextAndTextfeild(
              hintText: 'Address', text: '216 St Paul\'s Rd, '),
          SizedBox(height: 20),
          CustomTextAndTextfeild(hintText: 'City', text: 'London'),
          SizedBox(height: 20),
          CustomTextAndTextfeild(hintText: 'State', text: 'N1 2LL,'),
          SizedBox(height: 20),
          CustomTextAndTextfeild(hintText: 'Country', text: 'United Kingdom'),
          SizedBox(height: 25),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }

  Widget bankAccountDetails() {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bank Account Details',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          CustomTextAndTextfeild(
              hintText: 'Bank Account Number', text: '204356XXXXXXX'),
          SizedBox(height: 20),
          CustomTextAndTextfeild(
              hintText: 'Account Holder’s Name', text: 'Abhiraj Sisodiya'),
          SizedBox(height: 20),
          CustomTextAndTextfeild(hintText: 'IFSC Code', text: 'SBIN00428'),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
