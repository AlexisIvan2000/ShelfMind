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
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Welcome Alexis"),
            IconButton(
              onPressed: () {
                // Add your onPressed code here
              },
              icon: const Icon(Icons.person, size: 30),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchBar(
              hintText: "Search items...",
              leading: const Icon(Icons.search),
              onChanged: (value) {
                // Handle search input change
              },
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(Colors.grey[200]!),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby  Stores",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle view all action
                  }, 
                  icon: Icon(Icons.location_on_sharp, size: 25),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // list of nearby stores would go here
            const SizedBox(height: 30),
           Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Expiring Soon",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // list of expiring items would go here
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recommended for You",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20), 
            // list of recommended items would go here
            const SizedBox(height: 100),
            Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: () {
                  // Handle scan action
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: Colors.green[600],
                child: const Icon(Icons.add, size: 30, color: Colors.white),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavigateBar(),
    );
  }
}
