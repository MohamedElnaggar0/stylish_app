import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/app_router.dart';

void main() {
  runApp(StylishApp());
}

class StylishApp extends StatelessWidget {
  const StylishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
