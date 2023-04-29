import 'package:flutter/material.dart';

import '../constants/colors.dart';
class BottomNavigation extends StatefulWidget {
  final Function callBack;

  BottomNavigation({required this.callBack});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.callBack(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: _selectedIndex == 0 ? 'Home' : '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: _selectedIndex == 1 ? 'History' : '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: redColor,
      onTap: _onItemTapped,
    );
  }
}