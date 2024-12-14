import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/futures/auth/views/widgets/custom_text_field.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';

class TransactionsDate extends StatefulWidget {
  const TransactionsDate({super.key});

  @override
  State<TransactionsDate> createState() => _TransactionsDateState();
}

class _TransactionsDateState extends State<TransactionsDate> {
  //final TextEditingController _fromDateController = TextEditingController();
  //final TextEditingController _toDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Transactions',backButtonShow: false),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            CustomTextField(
                title: 'Select a date',
                formField: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Select a date',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () {},
                    ),
                  ),
                )),
            CustomTextField(
                title: 'Select a date',
                formField: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Select a date',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () {},
                    ),
                  ),
                )),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                CustomNavigator.pushNamed(RouteName.transactionsInfo);
              },
              child: const Text(
                'View Report',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

