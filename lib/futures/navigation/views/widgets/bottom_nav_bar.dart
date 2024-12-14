import 'package:assessment/common/navigator.dart';
import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/futures/navigation/views/widgets/nav_item.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {super.key, required this.selectedIndex, this.onDestinationSelected});

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.transparent,
            width: 90,
            height: 90,
          ),
          Container(
            height: 58,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, -4),
                  blurRadius: 5)
            ]),
          ),
          Positioned(
            bottom: -1,
            child: SvgPicture.asset(AssetsPath.navBackground),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: NavigationBar(
                selectedIndex: selectedIndex,
                onDestinationSelected: onDestinationSelected,
                backgroundColor: Colors.transparent,
                height: 58,
                destinations: [
                  NavItem(
                    icon: AssetsPath.dashboard,
                    label: 'Dashboard',
                    isIndicator: selectedIndex == 0,
                    onTap: () => onDestinationSelected?.call(0),
                  ),
                  NavItem(
                    icon: AssetsPath.products,
                    label: 'Products',
                    isIndicator: selectedIndex == 1,
                    onTap: () => onDestinationSelected?.call(1),
                  ),
                  NavItem(
                    label: 'Transaction',
                    isIndicator: false,
                    onTap: () {
                    },
                  ),
                  NavItem(
                    icon: AssetsPath.reports,
                    label: 'Reports',
                    isIndicator: selectedIndex == 3,
                    onTap: () => onDestinationSelected?.call(3),
                  ),
                  NavItem(
                    icon: AssetsPath.more,
                    label: 'More',
                    isIndicator: selectedIndex == 4,
                    onTap: () => onDestinationSelected?.call(4),
                  ),
                ]),
          ),
          Positioned(
            bottom: 17,
            child: GestureDetector(
              onTap: (){
                CustomNavigator.pushNamed(RouteName.transactionsScreen);
              },
              child: Stack(
                children: [
                  Image.asset(
                    AssetsPath.navCircle,
                    height: 76,
                    width: 74,
                  ),
                  Positioned(
                      right: 0,
                      left: 0,
                      bottom: 26,
                      child: Image.asset(
                        AssetsPath.transaction,
                        height: 30,
                        width: 30,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
