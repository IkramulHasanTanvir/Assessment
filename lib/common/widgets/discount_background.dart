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
    final Size size = MediaQuery.sizeOf(context);
    return isBigBackground
        ? Stack(
            children: [
              SvgPicture.asset(AssetsPath.discountBackSVG, width: 350),
              Positioned(
                  right: 0,
                  top: size.width > 400 ? null : 24,
                  child: SvgPicture.asset(AssetsPath.discountTopSVG,
                      width: size.width > 400 ? null : 175)),
              child,
            ],
          )
        : Stack(
            children: [
              SvgPicture.asset(AssetsPath.discountBackSmallSVG, width: 350),
              Positioned(
                  right: 0,
                  child: SvgPicture.asset(
                    AssetsPath.discountTopSmallSVG,
                  )),
              child,
            ],
          );
  }
}
