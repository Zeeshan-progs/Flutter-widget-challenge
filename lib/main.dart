import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/constants/colors.dart';
import 'package:project/ui/home_screen.dart';
import 'package:project/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: AppColors.white,
          primary: AppColors.primaryColor,
          brightness: Brightness.light,
          onPrimary: AppColors.primaryColor,
        ),
        scaffoldBackgroundColor: AppColors.white,
        primaryColor: AppColors.primaryColor,
        backgroundColor: AppColors.white,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routes: Routes.route,
      home: const HomeScreen(),
    );
  }
}
