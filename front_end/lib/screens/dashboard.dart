import 'package:flutter/material.dart';
import 'package:front_end/widgets/dashboard/navigation.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Welcome Alexis"),
            IconButton(
              onPressed: () {
                // Add your onPressed code here
              }, 
              icon: const Icon(Icons.person, size: 30,)
            )
          ],
        )
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
      bottomNavigationBar: const NavigateBar(),
    );
  }
}