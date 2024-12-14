import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage(
      {super.key,
      this.isDiscount = false,
      this.isProductDetails = false,
      this.isFavorite = true, required this.image});

  final bool isDiscount;
  final bool isProductDetails;
  final bool isFavorite;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: isProductDetails ? primaryColor : cardColor, width: 1),
          color: allCardColor,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              image,
              height: 90,
              width: 160,
            ),
          ),
          if (isDiscount)
            Positioned(
              top: 8,
              child: Container(
                alignment: Alignment.center,
                height: 18,
                width: 59,
                decoration: const BoxDecoration(
                    color: checkboxColor,
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20))),
                child: const Text(
                  'Save 20%',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          if(isFavorite)
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade600.withOpacity(0.9)),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
