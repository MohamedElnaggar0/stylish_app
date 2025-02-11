import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/utils/assets.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/core/widgets/custom_login_icon.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_password_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_feild.dart';
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
            SizedBox(height: 50),
            CustomTextWidget(text: 'Welcome\nBack!'),
            SizedBox(height: 30),
            CustomTextFeild(
              hintText: 'Username or Email',
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 30),
            CustomPasswordTextFeild(
              hintText: 'Password',
              suffixIcon: Icons.visibility,
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 60),
            CustomButton(
              text: 'Login',
              onTap: () {
                GoRouter.of(context).go(AppRouter.kGetStartedView);
              },
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                '-OR Continue with-',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLoginIcon(image: AssetsData.loginImages[0]),
                SizedBox(width: 10),
                CustomLoginIcon(image: AssetsData.loginImages[1]),
                SizedBox(width: 10),
                CustomLoginIcon(image: AssetsData.loginImages[2]),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
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
