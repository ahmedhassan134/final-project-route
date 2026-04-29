import 'package:easy_localization/easy_localization.dart';
import 'package:final_project_route/core/utils/app_colors.dart';
import 'package:final_project_route/core/utils/app_routes.dart';
import 'package:final_project_route/ui/screens/auth/forget_screen/screens/forget_screen.dart';
import 'package:final_project_route/ui/screens/auth/login_screen/screens/login_screen.dart';
import 'package:final_project_route/ui/screens/auth/register_screen/screens/register_screen.dart';
import 'package:final_project_route/ui/screens/auth/update_screen/screen/update_screen.dart';
import 'package:final_project_route/ui/screens/home_screen/home_screen.dart';
import 'package:final_project_route/ui/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


  final prefs = await SharedPreferences.getInstance();
  bool isFirstTime = prefs.getBool("isFirstTime") ?? true;

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
      child: MovieApp(isFirstTime: isFirstTime),
    ),
  );
}

class MovieApp extends StatelessWidget {

  final bool isFirstTime;

  const MovieApp({required this.isFirstTime});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute:    isFirstTime
      // ? AppRoutes.homeScreen
      // : AppRoutes.loginScreen,
      initialRoute: AppRoutes.updateScreen,
      theme: AppTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: {
        AppRoutes.onBoardingScreen:(context)=>OnBoardingScreen(),
        AppRoutes.homeScreen:(context)=>HomeScreen(),
        AppRoutes.loginScreen:(context)=>LoginScreen(),
        AppRoutes.registerScreen:(context)=>RegisterScreen(),
        AppRoutes.forgetScreen:(context)=>ForgetPassword(),
        AppRoutes.updateScreen:(context)=>UpdateScreen(),
      },
    );
  }
}

