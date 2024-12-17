import 'package:flutter/material.dart';

import '../widgets/app_logo_widget.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});
  static const String name = "/complete-profile";
  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shippingAddressTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 80,),
              const AppLogoWidget(
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 16,),
              Text(
                "Complete Profile",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Get started with us with your details",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 24,),
              _buildForm(),
              const SizedBox(height: 16,),
              ElevatedButton(
                onPressed: (){
                  //Navigator.pushNamed(context, OptVerificationScreen.name);
                },
                child: const Text("Complete"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildForm(){
    return Form(
      key: _formKey,
        child: Column(
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _firstNameTEController,
              decoration: const InputDecoration(
                hintText: 'First Name',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return "Enter valid your first name";
                }
                return null;
              },
            ),
            const SizedBox(height: 8,),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _lastNameTEController,
              decoration: const InputDecoration(
                hintText: 'Last Name',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return "Enter valid your last name";
                }
                return null;
              },
            ),
            const SizedBox(height: 8,),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _mobileTEController,
              keyboardType: TextInputType.phone,
              maxLength: 11,
              decoration: const InputDecoration(
                hintText: 'Mobile',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return "Enter valid your mobile number";
                }
                if (RegExp(r'^01[3-9]\d{8}$').hasMatch(value!) == false) {
                  return 'Enter valid mobile number';
                }
                return null;
              },
            ),
            const SizedBox(height: 8,),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _cityTEController,
              decoration: const InputDecoration(
                hintText: 'City Code',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return "Enter your valid  city code";
                }
                return null;
              },
            ),
            const SizedBox(height: 8,),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _shippingAddressTEController,
              decoration: const InputDecoration(
                hintText: 'Shipping Address',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return "Enter valid your shipping address";
                }
                return null;
              },
            ),
            const SizedBox(height: 16,),
          ],
        )
    );
  }
  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _cityTEController.dispose();
    _shippingAddressTEController.dispose();
    super.dispose();
  }
}


