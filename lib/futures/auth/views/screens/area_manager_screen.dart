import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/futures/auth/views/widgets/app_bar_title.dart';
import 'package:assessment/futures/auth/views/widgets/area_managers_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AreaManagerScreen extends StatelessWidget {
  const AreaManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AppBarTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Area Managers',
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),
            AreaManagersTile(
              title: 'Manager AA',
              subtitle: 'Area: Khilgaon',
              image: AssetsPath.person1,
              onTap: () {},
            ),
            AreaManagersTile(
              title: 'Manager BB',
              subtitle: 'Area: Malibagh',
              image: AssetsPath.person2,
              onTap: () {},
            ),
            AreaManagersTile(
              title: 'Manager CC',
              subtitle: 'Area: Mohakhali',
              image: AssetsPath.person3,
              onTap: () {},
            ),
            AreaManagersTile(
              title: 'Manager DD',
              subtitle: 'Area: Banasree',
              image: AssetsPath.person4,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
