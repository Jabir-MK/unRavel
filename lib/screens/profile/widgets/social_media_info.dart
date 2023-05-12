import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';

class SocialMediaInfo extends StatelessWidget {
  const SocialMediaInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(jDefaultPadding),
      decoration: BoxDecoration(
        color: appBarColor,
        borderRadius: jLRadius,
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            color: jBlackShade,
            spreadRadius: 1,
            blurRadius: 15,
          ),
          BoxShadow(
            offset: Offset(-5, -5),
            color: jLightBlack,
            spreadRadius: 1,
            blurRadius: 15,
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: jDefaultPadding * 6),
        decoration: BoxDecoration(
          borderRadius: jLRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                log('Twitter');
              },
              child: CircleAvatar(
                radius: 24,
                backgroundColor: jGrey,
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: jWhite,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                log('Facebook');
              },
              child: CircleAvatar(
                radius: 24,
                backgroundColor: jGrey,
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: jWhite,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                log('Instagram');
              },
              child: CircleAvatar(
                radius: 24,
                backgroundColor: jGrey,
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: jWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
