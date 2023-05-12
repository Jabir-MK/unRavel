import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/screens/groups/all_groups_screen.dart';
import 'package:travel_application/screens/home/home_screen.dart';
import 'package:travel_application/screens/locations/all_locations_screen.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: jTransparent,
      buttonBackgroundColor: jGreen,
      color: jGreen,
      index: 1,
      items: const [
        Icon(
          Icons.group_outlined,
          size: 30,
          color: jWhite,
        ),
        Icon(
          Icons.home_outlined,
          size: 30,
          color: jWhite,
        ),
        Icon(
          Icons.location_on_outlined,
          size: 30,
          color: jWhite,
        ),
      ],
      onTap: (value) {
        switch (value) {
          case 0:
            log('Groups Tab');
            pushScreen(AllGroupsScreen.routeName, context);
            break;
          case 1:
            log('Home Tab');
            pushScreen(HomeScreen.routeName, context);
            break;
          case 2:
            log('Locations Tab');
            pushScreen(AllLocationsScreen.routeName, context);
            break;
          default:
        }
      },
    );
  }
}
