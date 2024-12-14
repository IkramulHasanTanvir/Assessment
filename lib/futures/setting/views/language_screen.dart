import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:assessment/common/constants.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/futures/dashboard/views/dashboard_screen.dart';
import 'package:assessment/futures/transactions/views/transactions_date.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int curvedNavigationBarIndex = 4;

  // Navigation screens
  final List<Widget> _screenList = [
    const DashboardScreen(),
    const DashboardScreen(),
    const TransactionsDate(), // Current LanguageScreen
    const DashboardScreen(), // Replace with actual Analytics screen
    const LanguageScreen(),
  ];

  // Language options
  final List<Map<String, dynamic>> settingsItems = [
    {"logo": Icons.language, "label": "English", "checked": true},
    {"logo": Icons.language, "label": "বাংলা", "checked": false},
  ];

  // Handle navigation selection
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
      appBar: curvedNavigationBarIndex == 4
          ? const CustomAppBar(title: 'Language')
          : null,
      body: curvedNavigationBarIndex == 4
          ? _buildLanguageSettings()
          : _screenList[curvedNavigationBarIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _onDestinationSelected,
        backgroundColor: Colors.transparent,
        color: primaryColor,
        height: 60,
        index: curvedNavigationBarIndex,
        items: _buildNavBarItems(),
      ),
    );
  }

  // Build navigation bar items
  List<Widget> _buildNavBarItems() {
    const List<IconData> icons = [
      Icons.space_dashboard,
      Icons.directions_car,
      Icons.receipt_long,
      Icons.analytics,
      Icons.more_vert,
    ];

    const List<String> labels = [
      "Dashboard",
      "Products",
      "Receipts",
      "Analytics",
      "More",
    ];

    return List.generate(
      icons.length,
          (index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icons[index],
            color: Colors.white,
            size: curvedNavigationBarIndex == index ? 40 : 28,
          ),
          if (curvedNavigationBarIndex != index)
            Text(
              labels[index],
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
        ],
      ),
    );
  }

  // Build the language settings list
  Widget _buildLanguageSettings() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text(
            'Language',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Select your preferable language',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: settingsItems.length,
              itemBuilder: (context, index) {
                final item = settingsItems[index];
                return Card(
                  elevation: 0,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      item["logo"],
                      size: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      item["label"],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Checkbox(
                      value: item["checked"],
                      onChanged: (bool? newValue) {
                        setState(() {
                          for (var element in settingsItems) {
                            element["checked"] = false;
                          }
                          item["checked"] = newValue!;
                        });
                      },
                      activeColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
