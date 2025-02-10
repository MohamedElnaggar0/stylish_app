import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/core/widgets/custom_login_icon.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_password_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_widget.dart';

import '../../../../../constansts.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            CustomTextWidget(text: 'Create an \naccount!'),
            SizedBox(height: 30),
            CustomTextFeild(
                hintText: 'Username or Email', prefixIcon: Icons.person),
            SizedBox(height: 30),
            CustomPasswordTextFeild(
              hintText: 'Password',
              suffixIcon: Icons.visibility,
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 30),
            CustomPasswordTextFeild(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility,
            ),
            SizedBox(height: 20),
            _termsOfUseWidget(),
            SizedBox(height: 30),
            CustomButton(
              text: 'Create Account',
            ),
            SizedBox(height: 30),
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
                CustomLoginIcon(image: AssetsData.loginImages[1]),
                CustomLoginIcon(image: AssetsData.loginImages[2]),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I Already Have an Account ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).go(AppRouter.kSignInView);
                  },
                  child: Text(
                    'Login',
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

Widget _termsOfUseWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By clicking the ',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          TextSpan(
            text: 'Register',
            style: TextStyle(color: kPrimaryColor, fontSize: 18),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(
            text: ' button, you agree\nto the public offer',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
    ),
  );
}
