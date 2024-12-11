import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/futures/intro_pages/views/widgets/promotion_card.dart';
import 'package:assessment/common/widgets/custom_button.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 27, 27, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AssetsPath.appLogo, height: 28),
                    CustomButton(
                      isSkip: true,
                      onPressed: () {
                        CustomNavigator.pushAndRemoveAll(RouteName.loginScreen);
                      },
                      label: 'Skip',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 422,
                child: PageView.builder(
                  itemCount: 4,
                  controller: _pageController,
                  onPageChanged: (index) {
                    _currentPage = index;
                    setState(() {});
                  },
                  itemBuilder: (context, index) {
                    return const PromotionCard(
                      title: '20% Discount on All Tires',
                      subtitle: 'Avail this discount by 23rd June',
                      image: AssetsPath.tires,
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 54, vertical: 16),
                child: Text(
                  'Some of Promotional Content as Product wise',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SmoothPageIndicator(
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
              SizedBox(height: size.height * 0.1),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                  onPressed: _onTapNext,
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapNext() {
    if (_currentPage < 3) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      CustomNavigator.pushAndRemoveAll(RouteName.loginScreen);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
