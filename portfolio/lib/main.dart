import 'package:flutter/material.dart';
import 'package:portfolio/initial_page.dart';
import 'package:portfolio/presentation/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.greenColor),
        useMaterial3: true,
      ),
      home: const InitialPage(),
    );
  }
}

