import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/constants.dart';
import '../../../../core/widgets.dart';

class CustomEditRow extends StatelessWidget {
  const CustomEditRow({
    super.key,
    required this.headText,
    required this.hintText,
  });
  final String headText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(jDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: jMRadius,
        color: appBarColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(3, 3),
            color: jBlackShade,
            blurRadius: 10,
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            color: jLightBlack,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(jDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: jSRadius,
              color: backGroundColor,
            ),
            child: Text(
              headText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          jMWidthBox,
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: jDefaultPadding,
              ),
              decoration: BoxDecoration(
                borderRadius: jSRadius,
                color: backGroundColor.withOpacity(0.6),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: jGrey,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
