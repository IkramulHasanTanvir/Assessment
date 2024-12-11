import 'package:assessment/common/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountBackground extends StatelessWidget {
  const DiscountBackground(
      {super.key, required this.child, this.isBigBackground = true});

  final Widget child;
  final bool isBigBackground;

  @override
  Widget build(BuildContext context) {
    return isBigBackground
        ? Stack(
            children: [
              SvgPicture.asset(AssetsPath.discountBackSVG),
              Positioned(
                  right: 0, child: SvgPicture.asset(AssetsPath.discountTopSVG)),
              child,
            ],
          )
        : Stack(
            children: [
              SvgPicture.asset(AssetsPath.discountBackSmallSVG,width: 350,),
              Positioned(
                  right: 0,
                  child: SvgPicture.asset(AssetsPath.discountTopSmallSVG,)),
              child,
            ],
          );
  }
}
