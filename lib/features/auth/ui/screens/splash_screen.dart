import 'package:ecommerce_app1/app/assets_path.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/email_vefification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:ecommerce_app1/features/common/ui/screens/main_button_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }
  
  Future<void> _moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacementNamed(context, MainButtonNavScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                AppLogoWidget(),
                Spacer(),
                CircularProgressIndicator(),
              ],
            ),
        ),
      ),
    );
  }
}
