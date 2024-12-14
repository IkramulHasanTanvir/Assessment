import 'package:assessment/common/constants.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name, image;
  const Button({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {},
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lockColor.withOpacity(0.4),
          border: Border.all(color: primaryColor)
        ),
        width: 170,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              width: 24,
              height: 24,
            ),
            Text(
              name,
              softWrap: true,  // Allow text to wrap
              maxLines: 2,  // Allow text to break into a second line if necessary
              overflow: TextOverflow.ellipsis,  // Optional: Adds an ellipsis if the text overflows
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
