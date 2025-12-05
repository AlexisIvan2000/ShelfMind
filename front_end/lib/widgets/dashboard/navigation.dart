import 'package:flutter/material.dart';

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