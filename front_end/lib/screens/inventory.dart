import 'package:flutter/material.dart';
import 'package:front_end/widgets/dashboard/navigation.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Inventory",
              style: Theme.of(context).textTheme.titleLarge!,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Add your onPressed code here
                  },
                  icon: const Icon(Icons.add, size: 30),
                ),
                IconButton(
                  onPressed: () {
                    // Add your onPressed code here
                  },
                  icon: const Icon(Icons.search, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Align(
            alignment: Alignment.center,
             child: ElevatedButton.icon(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),                  
                ),
                backgroundColor: WidgetStateProperty.all(Colors.grey[200]!),
                foregroundColor: WidgetStateProperty.all(Colors.black),
              ),
              onPressed: () {
                // Add your onPressed code here
              },
              icon: const Icon(Icons.add,color: Colors.black,), 
              label: const Text("Add new item",style: TextStyle(color: Colors.black),),),
           )
          ],
        ),
      ),
      bottomNavigationBar: const NavigateBar(),
    );
  }
}