import 'package:ecommerce_app1/features/auth/ui/screens/opt_verification_screen.dart';
import 'package:ecommerce_app1/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = "/email-verification";
  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();

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
                const SizedBox(height: 80,),
                const AppLogoWidget(),
                const SizedBox(height: 16,),
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Please enter your email address",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 24,),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: "Email Address",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value){
                    if(value?.trim().isEmpty ?? true){
                      return "Enter your email address";
                    }
                    if(value?.trim().isEmpty ?? true){
                      return "Enter your email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, OptVerificationScreen.name);
                    }, 
                    child: const Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
