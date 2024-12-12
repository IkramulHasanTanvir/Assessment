import 'package:assessment/futures/auth/views/screens/change_pass_screen.dart';
import 'package:assessment/futures/auth/views/screens/forgot_pass_screen.dart';
import 'package:assessment/futures/auth/views/screens/login_screen.dart';
import 'package:assessment/futures/auth/views/screens/pin_confirmation_screen.dart';
import 'package:assessment/futures/dashboard/views/dashboard_screen.dart';
import 'package:assessment/futures/home_pages/views/home_screen.dart';
import 'package:assessment/futures/intro_pages/views/promotion_screen.dart';
import 'package:assessment/futures/intro_pages/views/splash_screen.dart';
import 'package:assessment/futures/navigation/views/bottom_nav_section.dart';
import 'package:assessment/futures/product_details/views/product_details_screen.dart';
import 'package:assessment/futures/search_products/views/search_products.dart';
import 'package:assessment/futures/transactions/views/transactions_date.dart';
import 'package:assessment/routes/route_name.dart';

abstract class RoutePage {
  static String initialRoute = RouteName.splashScreen;

  static var routes = {
    RouteName.splashScreen: (context) => const SplashScreen(),
    RouteName.promotionScreen: (context) => const PromotionScreen(),
    RouteName.loginScreen: (context) => const LoginScreen(),
    RouteName.forgotPassScreen: (context) => const ForgotPassScreen(),
    RouteName.changePassScreen: (context) => const ChangePassScreen(),
    RouteName.pinConfirmationScreen: (context) => const PinConfirmationScreen(),
    RouteName.homeScreen: (context) => const HomeScreen(),
    RouteName.dashboardScreen: (context) => const DashboardScreen(),
    RouteName.bottomNavBar: (context) => const BottomNavSection(),
    RouteName.productDetailsScreen: (context) => const ProductDetailsScreen(),
    RouteName.searchProductsScreen: (context) => const SearchProducts(),
    RouteName.transactionsScreen: (context) => const TransactionsDate(),
  };
}
