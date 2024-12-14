import 'package:assessment/common/constants.dart';
import 'package:assessment/futures/dashboard/views/dashboard_screen.dart';
import 'package:assessment/futures/setting/views/settings_screen.dart';
import 'package:assessment/futures/transactions/views/transactions_date.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavSection extends StatefulWidget {
  const BottomNavSection({super.key});

  @override
  State<BottomNavSection> createState() => _BottomNavSectionState();
}

class _BottomNavSectionState extends State<BottomNavSection> {
  int curvedNavigationBarIndex = 0;

  final List<Widget> _screenList = const [
    DashboardScreen(),
    DashboardScreen(),
    TransactionsDate(),
    DashboardScreen(),
    SettingsScreen(),
  ];

  void _onDestinationSelected(int index) {
    if (curvedNavigationBarIndex != index) {
      setState(() {
        curvedNavigationBarIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[curvedNavigationBarIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _onDestinationSelected,
        backgroundColor: Colors.transparent,
        // Transparent background
        color: primaryColor,
        // Navigation bar color
        height: 60,
        index: curvedNavigationBarIndex,
        items: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.space_dashboard,
                color: Colors.white,
                size: curvedNavigationBarIndex == 0 ? 40 : 28,
              ),
              if (curvedNavigationBarIndex != 0)
                const Text(
                  "Dashboard",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: curvedNavigationBarIndex == 1 ? 40 : 28,
              ),
              if (curvedNavigationBarIndex != 1)
                const Text(
                  "Products",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.receipt_long,
                color: Colors.white,
                size: curvedNavigationBarIndex == 2 ? 40 : 28,
              ),
              if (curvedNavigationBarIndex != 2)
                const Text(
                  "Receipts",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.analytics,
                color: Colors.white,
                size: curvedNavigationBarIndex == 3 ? 40 : 28,
              ),
              if (curvedNavigationBarIndex != 3)
                const Text(
                  "Analytics",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: curvedNavigationBarIndex == 4 ? 40 : 28,
              ),
              if (curvedNavigationBarIndex != 4)
                const Text(
                  "More",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
