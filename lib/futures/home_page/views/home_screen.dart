import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/common/widgets/small_promotion_card.dart';
import 'package:assessment/futures/home_page/views/widgets/summary_card.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home',isNotHomeScreen: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(AssetsPath.appLogo, height: 22),
            ),
            SizedBox(
              height: 176,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                controller: _pageController,
                itemBuilder: (context, index) {
                  return const SmallPromotionCard(
                    title: '20% Discount on All Tires',
                    subtitle: 'Avail this discount by 23rd June',
                    image: AssetsPath.tires,
                  );
                },
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 4,
                  activeDotColor: primaryColor,
                  dotColor: dotColor,
                ),
              ),
            ),
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
                      CustomNavigator.pushNamed(RouteName.dashboardScreen);
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
