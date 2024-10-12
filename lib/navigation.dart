import 'package:flutter/material.dart';
import 'package:t2_2022130019/dashboard_screen.dart';
import 'package:t2_2022130019/home_screen.dart';
import 'package:t2_2022130019/settings_screen.dart';

class Navigation extends StatefulWidget {
  final int index;
  const Navigation(this.index, {super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  dynamic _selectedIndex;
  
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index; 
  }  

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DashboardScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade400,
        onTap: _onItemTapped,
      ),
    );
  }
}