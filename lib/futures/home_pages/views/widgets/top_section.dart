import 'package:assessment/common/constants.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/common/widgets/small_promotion_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
