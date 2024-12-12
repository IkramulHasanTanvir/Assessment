import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchProducts extends StatelessWidget {
  const SearchProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Search Products'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
        child: Column(
          children: [
            Center(child: Image.asset(AssetsPath.appLogo, height: 22)),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: 'Search Products'),
            ),
            const SizedBox(height: 16),
            /*const SearchProducts(),
            const SearchProducts(),
            const SearchProducts(),*/
          ],
        ),
      ),
    );
  }
}
