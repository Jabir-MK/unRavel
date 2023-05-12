import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class CustomRowTripDetails extends StatelessWidget {
  const CustomRowTripDetails({
    super.key,
    required this.headText,
    required this.valText,
  });
  final String headText;
  final String valText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: jBlack,
          ),
        ),
        Text(
          valText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: jMediocreBlack,
          ),
        ),
      ],
    );
  }
}
