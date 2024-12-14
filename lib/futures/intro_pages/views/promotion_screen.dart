import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/futures/intro_pages/models/promotion_model.dart';
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

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 27, 27, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetsPath.appLogo, height: 28),
                      CustomButton(
                        isSkip: true,
                        onPressed: () {
                          CustomNavigator.pushAndRemoveAll(
                              RouteName.loginScreen);
                        },
                        label: 'Skip',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.06),
                Container(
                  constraints:
                      const BoxConstraints(maxWidth: 442, maxHeight: 480),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          constraints: const BoxConstraints(
                              maxWidth: 442, maxHeight: 422),
                          child: PageView.builder(
                            itemCount: promotions.length,
                            controller: _pageController,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  PromotionCard(
                                    title: promotions[index].title,
                                    subtitle: promotions[index].subtitle,
                                    image: promotions[index].imageUrl,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 54,
                                    ),
                                    child: Text(
                                      promotions[index].titleName,
                                      style: GoogleFonts.poppins(
                                        textStyle:
                                            const TextStyle(fontSize: 16),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: promotions.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 4,
                    activeDotColor: primaryColor,
                    dotColor: dotColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                onPressed: () {
                  CustomNavigator.pushAndRemoveAll(RouteName.loginScreen);
                },
                child: Text(
                  'Next',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
