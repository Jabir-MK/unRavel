import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.topHead,
    required this.downHead,
  });
  final String topHead;
  final String downHead;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: jXLRadius,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: jGreen,
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topHead.toUpperCase(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: jgreenOpac7,
            ),
          ),
          Text(
            downHead.toUpperCase(),
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
