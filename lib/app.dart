import 'package:assessment/common/navigator.dart';
import 'package:assessment/routes/route_page.dart';
import 'package:assessment/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BirGroupHoldings extends StatelessWidget {
  const BirGroupHoldings({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: CustomNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePage.initialRoute,
      routes: RoutePage.routes,
      theme: themeData,
    );
  }
}
