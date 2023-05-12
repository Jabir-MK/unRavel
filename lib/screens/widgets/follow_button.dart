import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Follow Button Clicked');
      },
      child: Container(
        padding: const EdgeInsets.all(jDefaultPadding - 5),
        decoration: BoxDecoration(
          color: jGreenMediocShade,
          borderRadius: jSRadius,
        ),
        child: Row(
          children: const [
            Icon(Icons.add_rounded, color: jWhite),
            Text(
              'Follow',
              style: TextStyle(
                color: jWhite,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
