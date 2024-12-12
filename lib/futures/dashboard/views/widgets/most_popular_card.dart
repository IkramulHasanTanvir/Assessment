import 'package:assessment/common/constants.dart';
import 'package:assessment/common/navigator.dart';
import 'package:assessment/futures/dashboard/views/widgets/card_button.dart';
import 'package:assessment/common/widgets/card_image.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({super.key,  this.isDiscount = false});

  final bool isDiscount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        CustomNavigator.pushNamed(RouteName.productDetailsScreen);
      },
      child: Container(
        height: 250,
        width: 180,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CardImage(isDiscount: isDiscount),
              const SizedBox(height: 4),
              Text(
                'Michel Tires',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                )),
              ),
              const SizedBox(height: 4),
              Text('Lorem ipsum dolor sit amet consectetur elit',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: cardSubtitleColor))),
              const SizedBox(height: 4),
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
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardButton(title: 'Details', onTap: (){}),
                  CardButton(title: 'Add',isRedColor: true, onTap: (){}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
