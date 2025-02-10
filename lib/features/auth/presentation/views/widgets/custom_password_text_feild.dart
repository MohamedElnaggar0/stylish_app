// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomPasswordTextFeild extends StatefulWidget {
  const CustomPasswordTextFeild({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
  });
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;

  @override
  State<CustomPasswordTextFeild> createState() =>
      _CustomPasswordTextFeildState();
}

class _CustomPasswordTextFeildState extends State<CustomPasswordTextFeild> {
  bool obscureText = true;
  @override
  void initState() {
    obscureText = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(widget.suffixIcon),
        ),
        prefixIcon: Icon(widget.prefixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
