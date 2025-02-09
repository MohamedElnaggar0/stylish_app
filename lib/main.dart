import 'package:flutter/material.dart';
import 'package:stylish_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(StylishApp());
}

class StylishApp extends StatelessWidget {
  const StylishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
