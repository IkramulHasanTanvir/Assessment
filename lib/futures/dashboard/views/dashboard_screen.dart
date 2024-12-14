import 'package:assessment/common/constants.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:assessment/common/widgets/small_promotion_card.dart';
import 'package:assessment/futures/dashboard/views/widgets/categories_box.dart';
import 'package:assessment/futures/dashboard/views/widgets/most_popular_card.dart';
import 'package:assessment/futures/dashboard/views/widgets/top_sales_card.dart';
import 'package:assessment/futures/home_pages/views/widgets/section_title.dart';
import 'package:assessment/futures/home_pages/views/widgets/top_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Dashboard', backButtonShow: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopSection(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company : KPMS',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: companyColors,
                    )),
                  ),
                  const Divider(color: dividerColors),
                  const SizedBox(height: 8),
                  const SectionTitle(title: 'Categories'),
                  const SizedBox(height: 8),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoriesBox(
                          title: 'Tires',
                          image: AssetsPath.tires,
                        ),
                        CategoriesBox(
                          title: 'Battery',
                          image: AssetsPath.battary,
                        ),
                        CategoriesBox(
                          title: 'Spark Plug',
                          image: AssetsPath.hiclipart,
                        ),
                        CategoriesBox(
                          title: 'Suspension',
                          image: AssetsPath.hiclipart1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const SectionTitle(title: 'Most Popular'),
                  const SizedBox(height: 8),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MostPopularCard(
                          isDiscount: true,
                          title: 'Michel Tires',
                          image: AssetsPath.tires,
                        ),
                        SizedBox(width: 10),
                        MostPopularCard(
                            title: 'Michel Suspension',
                            image: AssetsPath.hiclipart),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SectionTitle(title: 'Top Sales', viewAllShow: false),
                  const SizedBox(height: 16),
                  const TopSalesCard(
                    isDiscount: true,
                    title: 'Michel Tires',
                    image: AssetsPath.tires,
                  ),
                  const SizedBox(height: 16),
                  const TopSalesCard(
                    title: 'Michel Suspension',
                    image: AssetsPath.hiclipart,
                  ),
                  const SizedBox(height: 16),
                  const TopSalesCard(
                    title: 'Michel Suspension',
                    image: AssetsPath.hiclipart,
                  ),
                  const SizedBox(height: 16),
                  Center(
                      child: Text(
                    'Load More',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                  )),
                  const SizedBox(height: 16),
                  const SmallPromotionCard(
                    title: '20% Discount on All Tires',
                    subtitle: 'Avail this discount by 23rd June',
                    image: AssetsPath.tires,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: const BottomNavSection(),
    );
  }
}
