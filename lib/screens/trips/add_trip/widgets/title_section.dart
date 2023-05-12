import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/constants.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding * 2),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(jDefaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: jLRadius,
          color: jGrey.withOpacity(0.2),
          boxShadow: const [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 15,
              spreadRadius: 1,
              color: jLightBlack,
            ),
            BoxShadow(
              offset: Offset(-5, -5),
              blurRadius: 15,
              spreadRadius: 1,
              color: jLightBlack,
            ),
          ],
        ),
        child: Column(
          children: const [
            Text(
              'Create New Trip',
              style: TextStyle(
                fontSize: 28,
                color: jWhite,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Invite the Community',
              style: TextStyle(
                fontSize: 18,
                color: jWhite,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Explore the World together',
              style: TextStyle(
                fontSize: 18,
                color: jWhite,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
