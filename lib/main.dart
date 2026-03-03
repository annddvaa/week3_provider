import 'package:flutter/material.dart';
import 'package:week3_provider/core/routes/app_router.dart';
import 'package:week3_provider/injection.dart';

void main() {
  runApp(
    buildApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
    );
  }
}
