import 'package:flutter/material.dart';
import 'package:front_end/widgets/dashboard/navigation.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Inventory Screen Content'),
      ),
      bottomNavigationBar: const NavigateBar(),
    );
  }
}