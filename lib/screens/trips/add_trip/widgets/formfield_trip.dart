import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/constants.dart';

class TripFormField extends StatelessWidget {
  const TripFormField({
    super.key,
    required this.hintText,
    required this.fieldTitle,
  });
  final String hintText;
  final String fieldTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                child: Divider(
                  color: backGroundColor,
                  thickness: 2,
                  endIndent: 5,
                ),
              ),
              Text(
                fieldTitle,
                style: const TextStyle(
                  color: jWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2,
                ),
              ),
              Expanded(
                child: Divider(
                  color: backGroundColor,
                  thickness: 2,
                  indent: jDefaultPadding - 2,
                  endIndent: jDefaultPadding - 2,
                ),
              )
            ],
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: jDefaultPadding + 5),
            margin: const EdgeInsets.all(jDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: jMRadius,
              color: jWhite.withOpacity(0.7),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
