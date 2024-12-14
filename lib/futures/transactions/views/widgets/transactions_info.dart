import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:assessment/common/constants.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/common/widgets/custom_button.dart';
import 'package:assessment/futures/dashboard/views/dashboard_screen.dart';
import 'package:assessment/futures/setting/views/settings_screen.dart';
import 'package:assessment/futures/transactions/views/transactions_date.dart';

class TransactionsInfo extends StatefulWidget {
  const TransactionsInfo({super.key});

  @override
  State<TransactionsInfo> createState() => _TransactionsInfoState();
}

class _TransactionsInfoState extends State<TransactionsInfo> {
  int curvedNavigationBarIndex = 2;

  // Simulated transactions list (you can replace with dynamic data fetching logic)
  final List<Map<String, dynamic>> _transactions = [
    {
      'billNo': '345345-34545',
      'date': '2024-09-23',
      'accountTitle': 'ABC Cash',
      'totalProduct': 1,
      'billed': '230.00 BDT',
      'received': '340.00 BDT',
      'status': 'PAID',
    },
    {
      'billNo': '123456-78901',
      'date': '2024-09-22',
      'accountTitle': 'XYZ Store',
      'totalProduct': 2,
      'billed': '500.00 BDT',
      'received': '500.00 BDT',
      'status': 'PAID',
    },
    {
      'billNo': '987654-32100',
      'date': '2024-09-21',
      'accountTitle': 'LMN Mart',
      'totalProduct': 3,
      'billed': '750.00 BDT',
      'received': '700.00 BDT',
      'status': 'UNPAID',
    },
  ];

  // Navigation items (can replace with actual widget screens)
  final List<Widget> _screenList = [
    const DashboardScreen(),
    const DashboardScreen(),
    const TransactionsDate(),
    const DashboardScreen(), // Replace with actual screen for Products
    const SettingsScreen(),
  ];

  // Handle navigation bar selection
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
      appBar: curvedNavigationBarIndex == 2 ? const CustomAppBar(title: 'Transactions') : null,
      body: curvedNavigationBarIndex == 2
          ? _buildTransactionList()
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

  // Build the transaction list
  Widget _buildTransactionList() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Form Date / To Date',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '22-01-23 / 22-09-23',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ..._transactions.map((transaction) {
            return Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bill No: ${transaction['billNo']}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Date: ${transaction['date']}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.red, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Account Title: ${transaction['accountTitle']}',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.print, color: Colors.blue),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Text('Total Product: ${transaction['totalProduct']}'),
                    Text('Billed: ${transaction['billed']}'),
                    const Divider(color: Colors.red, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Received: ${transaction['received']}'),
                              Text(
                                'Date: ${transaction['date']}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          foregroundColor: Colors.white,
                          color: transaction['status'] == 'UNPAID'
                              ? primaryColor
                              : Colors.green,
                          onPressed: () {},
                          label: transaction['status'],
                          isSkip: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
