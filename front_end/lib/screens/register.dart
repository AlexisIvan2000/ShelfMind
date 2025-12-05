import 'package:flutter/material.dart';
import 'package:front_end/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
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
                  'Create Account',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(height: 6),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please fill all the fields to create a new account',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }

}