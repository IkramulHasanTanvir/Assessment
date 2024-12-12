import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/futures/dashboard/views/widgets/card_button.dart';
import 'package:assessment/common/widgets/card_image.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopSalesCard extends StatelessWidget {
  const TopSalesCard({super.key,  this.isDiscount = false});

  final bool isDiscount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        CustomNavigator.pushNamed(RouteName.productDetailsScreen);

      },
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardImage(isDiscount: isDiscount),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Michel Tires',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Text('Lorem ipsum dolor sit...',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: cardSubtitleColor))),
                  RichText(
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.black)),
                        text: 'Stock: ',
                        children: const [
                          TextSpan(
                              style: TextStyle(color: Colors.green),
                              text: 'Available'),
                        ]),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardButton(title: 'Details', onTap: (){}),
                      const SizedBox(width: 60),
                      CardButton(title: 'Add',isRedColor: true, onTap: (){}),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}