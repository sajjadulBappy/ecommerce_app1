import 'package:ecommerce_app1/app/app_colors.dart';
import 'package:ecommerce_app1/features/auth/ui/screens/opt_verification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OptVerificationScreen extends StatefulWidget {
  const OptVerificationScreen({super.key});

  static const String name = "/otp-verification";
  @override
  State<OptVerificationScreen> createState() =>
      _OptVerificationScreenState();
}

class _OptVerificationScreenState extends State<OptVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const AppLogoWidget(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Enter OTP Code",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "A 4 digit otp has been sent to your email",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  animationDuration: const Duration(milliseconds: 300),
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeColor: AppColors.themeColor,
                      inactiveColor: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  keyboardType: TextInputType.number,
                  appContext: context,
                  controller: _otpTEController,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, OptVerificationScreen.name);
                  },
                  child: const Text("Next"),
                ),
                const SizedBox(height: 24,),
                RichText(
                  text: const TextSpan(
                    text: 'This code will be expire in ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: '120s',
                        style: TextStyle(
                          color: AppColors.themeColor,
                        ),
                      )
                    ],
                  ),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text("Resend Code"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
