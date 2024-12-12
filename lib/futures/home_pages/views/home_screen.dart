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
      appBar: const CustomAppBar(title: 'Home',isNotHomeScreen: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopSection(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company Summary',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: companyColors,
                    )),
                  ),
                  const Divider(color: dividerColors),
                  const SizedBox(height: 8),
                   SummaryCard(
                    onTap: (){
                      CustomNavigator.pushNamed(RouteName.bottomNavBar);
                    },
                    title: 'KPMS',
                    suffixIcon: Icons.arrow_forward_ios_outlined,
                  ),
                  const SummaryCard(
                    title: 'tools',
                    suffixText: 'Total Product: 100',
                  ),
                  const SummaryCard(
                    title: 'BMI',
                    suffixText: 'Total Product: 005',
                  ),
                  const SummaryCard(
                    title: 'BCEL',
                    suffixText: 'Total Product: 055',
                  ),
                  const SummaryCard(
                    title: 'KGI',
                    suffixText: 'Total Product: 055',
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
