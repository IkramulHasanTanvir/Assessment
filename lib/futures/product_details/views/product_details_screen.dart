import 'package:assessment/common/constants.dart';
import 'package:assessment/common/widgets/card_image.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/futures/navigation/views/widgets/bottom_nav_bar.dart';
import 'package:assessment/futures/product_details/views/widgets/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Product details'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 442, maxHeight: 160),
                child: PageView.builder(
                  itemCount: 4,
                  controller: _pageController,
                  onPageChanged: (index) {
                    _currentPage = index;
                    setState(() {});
                  },
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CardImage(
                        isDiscount: true,
                        isProductDetails: true,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
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
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildImageGallery(),
                    _buildImageGallery(),
                    _buildImageGallery(),
                    _buildImageGallery(),
                  ],
                ),
              ),
              ProductDetailsView(
                title: 'Michel Tires',
                category: 'Category: Parts ',
                subCategory: 'Sub-Category: Tires',
                details:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco',
                reviews: '(340 Reviews)',
                stock: 'Available',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 8,
                color: dividerColors.withOpacity(0.1),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Refer Product'),
                leading: Icon(Icons.share),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: authSubtitleColor,
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Remarks'),
                leading: Icon(Icons.message),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: authSubtitleColor,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 0),
    );
  }

  Widget _buildImageGallery() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 64,
        width: 75,
        child: CardImage(isFavorite: false),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
