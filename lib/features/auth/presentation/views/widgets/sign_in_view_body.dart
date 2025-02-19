import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/utils/login_images_content.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/core/widgets/custom_login_icon.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_password_text_feild.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_widget.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const CustomTextWidget(text: 'Welcome\nBack!'),
            const SizedBox(height: 30),
            const CustomTextFeild(
              hintText: 'Username or Email',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 30),
            const CustomPasswordTextFeild(
              hintText: 'Password',
              suffixIcon: Icons.visibility,
              prefixIcon: Icons.lock,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go(AppRouter.kForgetPasswordView);
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text('Forgot Password?',
                    style: TextStyle(color: kPrimaryColor, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 60),
            CustomButton(
              text: 'Login',
              onTap: () {
                GoRouter.of(context).go(AppRouter.kGetStartedView);
              },
            ),
            const SizedBox(height: 60),
            const Center(
              child: Text(
                '-OR Continue with-',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLoginIcon(image: LoginImagesContent.loginImages[0]),
                const SizedBox(width: 10),
                CustomLoginIcon(image: LoginImagesContent.loginImages[1]),
                const SizedBox(width: 10),
                CustomLoginIcon(image: LoginImagesContent.loginImages[2]),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create An Account ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).go(AppRouter.kSignUpView);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
