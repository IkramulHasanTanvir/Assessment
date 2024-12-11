import 'package:assessment/futures/auth/views/screens/change_pass_screen.dart';
import 'package:assessment/futures/auth/views/screens/forgot_pass_screen.dart';
import 'package:assessment/futures/auth/views/screens/login_screen.dart';
import 'package:assessment/futures/auth/views/screens/pin_confirmation_screen.dart';
import 'package:assessment/futures/dashboard/views/dashboard_screen.dart';
import 'package:assessment/futures/home_page/views/home_screen.dart';
import 'package:assessment/futures/intro_pages/views/promotion_screen.dart';
import 'package:assessment/futures/intro_pages/views/splash_screen.dart';
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
  };
}
