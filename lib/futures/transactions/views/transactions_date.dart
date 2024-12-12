import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TransactionsDate extends StatelessWidget {
  const TransactionsDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Transactions'),
    );
  }
}
