import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_password_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_widget.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomTextWidget(text: 'Welcome\nBack!'),
        CustomTextFeild(
            hintText: 'Username or Email', prefixIcon: Icons.person),
        CustomPasswordTextFeild(
          hintText: 'Password',
          suffixIcon: Icons.visibility,
          prefixIcon: Icons.lock,
        ),
        CustomButton(
          text: 'Login',
        )
      ],
    );
  }
}
