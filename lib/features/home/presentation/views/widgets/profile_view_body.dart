import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_password_text_feild.dart';
import 'package:stylish_app/gen/assets.gen.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          personalDetails(),
        ],
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

  Widget personalDetails() {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Details',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Email Address',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          CustomTextFeild(
            hintText: 'aashifa@gmail.com',
          ),
          Text(
            'Password',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          CustomPasswordTextFeild(
              hintText: '***********', suffixIcon: Icons.visibility),
        ],
      ),
    );
  }
}
