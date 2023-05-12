import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.headText,
    required this.valText,
  });
  final String headText;
  final String valText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(jDefaultPadding),
      margin: const EdgeInsets.all(jDefaultPadding - 5),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: jMRadius,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(jDefaultPadding - 5),
            decoration: BoxDecoration(
              color: appBarColor,
              borderRadius: jSRadius,
            ),
            child: Text(
              headText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: jGrey,
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(jDefaultPadding - 2.5),
            decoration: BoxDecoration(
              color: appBarColor,
              borderRadius: jSRadius,
            ),
            child: Text(
              overflow: TextOverflow.fade,
              valText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: jBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
