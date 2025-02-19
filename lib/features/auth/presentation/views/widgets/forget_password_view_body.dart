import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_app/constansts.dart';
import 'package:stylish_app/core/utils/app_router.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/core/widgets/custom_text_feild.dart';
import 'package:stylish_app/features/auth/presentation/views/widgets/custom_text_widget.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomTextWidget(
            text: 'Forget \nPassword?',
          ),
          const SizedBox(height: 30),
          const CustomTextFeild(
            hintText: 'Enter your email address',
            prefixIcon: Icons.email,
          ),
          const SizedBox(height: 30),
          _sendEmailWidget(),
          const SizedBox(height: 40),
          CustomButton(
            text: 'Submit',
            onTap: () {
              GoRouter.of(context).go(AppRouter.kSignInView);
            },
          ),
        ],
      ),
    );
  }
}

Widget _sendEmailWidget() {
  return RichText(
    text: TextSpan(
      text: '* ',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: kPrimaryColor,
      ),
      children: [
        const TextSpan(
          text: 'We will send you a message to set or reset\nyour new password',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
