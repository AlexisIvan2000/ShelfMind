import 'package:flutter/material.dart';
import 'package:front_end/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome Back !',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(height: 6),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please fill all the fields to login to your account',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }

}