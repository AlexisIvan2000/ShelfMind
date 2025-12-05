import 'package:flutter/material.dart';
import 'package:front_end/screens/dashboard.dart';
import 'package:front_end/screens/inventory.dart';
import 'package:front_end/screens/notifications.dart';
import 'package:front_end/screens/settings.dart';

class NavigateBar extends StatefulWidget{
  const NavigateBar({super.key});

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const DashboardScreen()),
          (Route<dynamic> route) => false,
        );
      } else if (_selectedIndex == 1) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const InventoryScreen()),
          (Route<dynamic> route) => false,
        );
      } else if (_selectedIndex == 2) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const NotificationsScreen()),
          (Route<dynamic> route) => false,
        );
      } else if (_selectedIndex == 3) {
       Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const SettingsScreen()),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory),
          label: 'Items',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_on),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.grey[100],
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );
  }
}