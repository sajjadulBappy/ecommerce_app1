import 'package:ecommerce_app1/app/app_theme.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/email_vefification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/opt_verification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: EmailVerificationScreen.name,
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      themeMode: ThemeMode.light,
      routes: {
        '/' : (context) => const SplashScreen(),
        EmailVerificationScreen.name : (contest) => const EmailVerificationScreen(),
        OptVerificationScreen.name : (context) => const OptVerificationScreen(),
      },
    );
  }
}
