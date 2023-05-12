import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';

class CustomLocationTitle extends StatelessWidget {
  const CustomLocationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        color: backGroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: jGreen,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'UNRAVEL THE',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: jgreenOpac7,
            ),
          ),
          Text(
            'WORLD',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: jGreen,
            ),
          ),
        ],
      ),
    );
  }
}
