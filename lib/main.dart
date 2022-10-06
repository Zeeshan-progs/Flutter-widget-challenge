import 'package:flutter/material.dart';
import 'package:project/constants/colors.dart';
import 'package:project/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.light(
            background: AppColors.white,
            primary: AppColors.primaryColor,
            brightness: Brightness.light,
            onPrimary: AppColors.primaryColor,
          ),
          primaryColor: AppColors.primaryColor,
          backgroundColor: AppColors.white),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}
