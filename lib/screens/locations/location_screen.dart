import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

import '../profile/profile_screen.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key, required this.image});
  static const String routeName = 'Location_Screen';

  final String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: CustomAppbar(
            leadIcon: Icons.arrow_back_rounded,
            tailIcon: Icons.person_outline_rounded,
            leadAction: () => popScreen(context),
            tailAction: () {
              log('Profile Clicked');
              pushScreen(ViewProfileScreen.routeName, context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: jDefaultPadding - 5),
                decoration: BoxDecoration(
                  borderRadius: jMRadius,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            jLHeightBox,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: jDefaultPadding),
              decoration: BoxDecoration(
                color: backGroundColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(jDefaultPadding + 40),
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    color: jLightBlack,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Location Name',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      color: jMediocreBlack,
                    ),
                  ),
                  jSWidthBox,
                ],
              ),
            ),
            jLHeightBox,
          ],
        ),
      ),
    );
  }
}
