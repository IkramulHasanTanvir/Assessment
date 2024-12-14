import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/futures/home_pages/views/widgets/summary_card.dart';
import 'package:assessment/futures/home_pages/views/widgets/top_section.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Home',
        isNotHomeScreen: false,
        backButtonShow: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top section of the Home Screen
            const TopSection(),

            // Company Summary Section
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    'Company Summary',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: companyColors,
                      ),
                    ),
                  ),
                  // Divider for separation
                  const Divider(color: dividerColors),
                  const SizedBox(height: 8),

                  // List of Summary Cards
                  SummaryCard(
                    onTap: () {
                      CustomNavigator.pushAndRemoveAll(RouteName.bottomNavBar);
                    },
                    title: 'KPMS',
                    suffixText: 'Total Product: 1005',
                    suffixIcon: Icons.arrow_forward_ios_outlined,
                  ),
                  SummaryCard(
                    onTap: () {
                      CustomNavigator.pushAndRemoveAll(RouteName.bottomNavBar);
                    },
                    title: 'Tools',
                    suffixText: 'Total Product: 100',
                    suffixIcon: Icons.arrow_forward_ios_outlined,
                  ),
                  SummaryCard(
                    onTap: () {
                      CustomNavigator.pushAndRemoveAll(RouteName.bottomNavBar);
                    },
                    title: 'BMI',
                    suffixText: 'Total Product: 005',
                    suffixIcon: Icons.arrow_forward_ios_outlined,
                  ),
                  SummaryCard(
                    onTap: () {
                      CustomNavigator.pushAndRemoveAll(RouteName.bottomNavBar);
                    },
                    title: 'BCEL',
                    suffixText: 'Total Product: 055',
                    suffixIcon: Icons.arrow_forward_ios_outlined,
                  ),
                  SummaryCard(
                    onTap: () {
                      CustomNavigator.pushAndRemoveAll(RouteName.bottomNavBar);
                    },
                    title: 'KGI',
                    suffixText: 'Total Product: 055',
                    suffixIcon: Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
