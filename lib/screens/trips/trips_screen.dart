import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/screens/profile/profile_screen.dart';
import 'package:travel_application/screens/trips/widgets/trips_bottombar.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

import '../../core/colors.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});
  static String routeName = 'Trips_Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/spot4.jpg'),
          fit: BoxFit.cover,
          opacity: 0.8,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: jTransparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: CustomAppbar(
              leadIcon: Icons.arrow_back,
              tailIcon: Icons.person_outline_rounded,
              leadAction: () {
                popScreen(context);
              },
              tailAction: () {
                log('Profile Tapped');
                pushScreen(ViewProfileScreen.routeName, context);
              },
            ),
          ),
          bottomNavigationBar: const TripsBottomBar(),
        ),
      ),
    );
  }
}
