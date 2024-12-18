import 'package:ecommerce_app1/app/app_theme.dart';
import 'package:ecommerce_app1/app/controller_binder.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/email_vefification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/opt_verification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/splash_screen.dart';
import 'package:ecommerce_app1/features/common/ui/screens/main_button_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      themeMode: ThemeMode.light,
      initialBinding: ControllerBinder(),
      routes: {
        '/' : (context) => const SplashScreen(),
        EmailVerificationScreen.name : (contest) => const EmailVerificationScreen(),
        OptVerificationScreen.name : (context) => const OptVerificationScreen(),
        CompleteProfileScreen.name : (context) => const CompleteProfileScreen(),
        MainButtonNavScreen.name : (context) => const MainButtonNavScreen(),
      },
    );
  }
}
