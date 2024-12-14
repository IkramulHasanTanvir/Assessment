import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<Map<String, dynamic>> settingsItems = [
    {"logo": Icons.language, "label": "Language", "action": "language"},
    {"logo": Icons.logout, "label": "Change password", "action": "language"},
    {"logo": Icons.logout, "label": "Logout", "action": "language"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ' Setting',backButtonShow: false),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: settingsItems.length,
            itemBuilder: (context, index) {
              final item = settingsItems[index];
              return Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          item["logo"], // Use Icon directly
                          size: 25,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          item["label"],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.chevron_right, color: Colors.grey),
                      onPressed: () {
                        CustomNavigator.pushNamed(RouteName.languageScreen);
                        print('hy');
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
