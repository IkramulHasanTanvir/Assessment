import 'package:assessment/futures/dashboard/views/dashboard_screen.dart';
import 'package:assessment/futures/navigation/views/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavSection extends StatefulWidget {
  const BottomNavSection({super.key});

  @override
  State<BottomNavSection> createState() => _BottomNavSectionState();
}

class _BottomNavSectionState extends State<BottomNavSection> {
  int _selectedIndex = 0;

  final List<Widget> _screenList = const [
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
