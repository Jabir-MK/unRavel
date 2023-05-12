import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/groups/add_group/add_group_screen.dart';
import 'package:travel_application/screens/locations/add_location/add_location_screen.dart';
import 'package:travel_application/screens/profile/profile_screen.dart';
import 'package:travel_application/screens/trips/add_trip/add_trip_screen.dart';

enum MenuVal {
  create,
  viewProfile,
  settings,
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(jDefaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding),
        height: 70,
        decoration: BoxDecoration(
          color: appBarColor,
          borderRadius: jLRadius,
          boxShadow: const [
            BoxShadow(
              color: jBlackShade,
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton<MenuVal>(
              position: PopupMenuPosition.under,
              offset: const Offset(0, 30),
              color: appBarColor,
              constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width / 1),
              shape: RoundedRectangleBorder(borderRadius: jLRadius),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: MenuVal.create,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          color: jGreen,
                          size: 30,
                        ),
                        jMWidthBox,
                        const Text(
                          'Create',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: MenuVal.viewProfile,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: jGreen,
                          size: 30,
                        ),
                        jMWidthBox,
                        const Text(
                          'View Profile',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: MenuVal.settings,
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: jGrey,
                          size: 30,
                        ),
                        jMWidthBox,
                        const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              onSelected: (value) {
                switch (value) {
                  case MenuVal.create:
                    log('Create clicked');
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: jLRadius),
                          titleTextStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: jBlack,
                            letterSpacing: 1,
                          ),
                          backgroundColor: appBarColor,
                          title: Container(
                            padding: const EdgeInsets.all(jDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: jLRadius,
                              color: backGroundColor,
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 10,
                                  color: jBlackShade,
                                ),
                                BoxShadow(
                                  offset: Offset(-3, -3),
                                  blurRadius: 10,
                                  color: jBlackShade,
                                ),
                              ],
                            ),
                            child: const Text('Create'),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  pushScreen(
                                      AddLocationScreen.routeName, context);
                                },
                                icon: const Icon(
                                  Icons.add_location_alt_outlined,
                                  color: jBlack,
                                ),
                                label: const Text('New Location',
                                    style: TextStyle(
                                      color: jBlack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    )),
                              ),
                              const Divider(),
                              TextButton.icon(
                                onPressed: () {
                                  pushScreen(AddTripScreen.routeName, context);
                                },
                                icon: const Icon(
                                  Icons.travel_explore_outlined,
                                  color: jBlack,
                                  size: 30,
                                ),
                                label: const Text(
                                  'New Trip',
                                  style: TextStyle(
                                    color: jBlack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              const Divider(),
                              TextButton.icon(
                                onPressed: () {
                                  pushScreen(AddGroupScreen.routeName, context);
                                },
                                icon: const Icon(
                                  Icons.group_add_outlined,
                                  color: jBlack,
                                  size: 30,
                                ),
                                label: const Text(
                                  'New Group',
                                  style: TextStyle(
                                    color: jBlack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                    break;
                  case MenuVal.viewProfile:
                    log('View Profile Clicked');
                    pushScreen(ViewProfileScreen.routeName, context);
                    break;
                  case MenuVal.settings:
                    log('Settings clicked');
                    break;
                  default:
                }
              },
              child: Container(
                padding: const EdgeInsets.all(jDefaultPadding),
                decoration: BoxDecoration(
                  color: appBarColor,
                  boxShadow: const [
                    BoxShadow(
                      color: jBlackShade,
                      blurRadius: 6,
                    )
                  ],
                  borderRadius: jMRadius,
                ),
                child: const Icon(
                  Icons.sort_rounded,
                  size: 25,
                ),
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: jRedError,
                ),
                Text(
                  'Tirur,India',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(jDefaultPadding),
                decoration: BoxDecoration(
                  color: appBarColor,
                  boxShadow: const [
                    BoxShadow(
                      color: jBlackShade,
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: jMRadius,
                ),
                child: const Icon(Icons.search_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
