import 'package:flutter/material.dart';
import 'package:front_end/widgets/dashboard/navigation.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Notifications Screen Content'),
      ),
      bottomNavigationBar: const NavigateBar(),
    );
  }
}