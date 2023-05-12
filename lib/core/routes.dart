import 'package:flutter/material.dart';
import 'package:travel_application/screens/groups/add_group/add_group_screen.dart';
import 'package:travel_application/screens/groups/all_groups_screen.dart';
import 'package:travel_application/screens/groups/group_screen.dart';
import 'package:travel_application/screens/home/home_screen.dart';
import 'package:travel_application/screens/locations/add_location/add_location_screen.dart';
import 'package:travel_application/screens/locations/all_locations_screen.dart';
import 'package:travel_application/screens/profile/edit/edit_profile_screen.dart';
import 'package:travel_application/screens/profile/profile_screen.dart';
import 'package:travel_application/screens/sign_in/sign_in_screen.dart';
import 'package:travel_application/screens/sign_in/sign_up_screen.dart';
import 'package:travel_application/screens/trips/add_trip/add_trip_screen.dart';
import 'package:travel_application/screens/trips/trips_screen.dart';

Map<String, WidgetBuilder> routes = {
  AddGroupScreen.routeName: (context) => const AddGroupScreen(),
  AllGroupsScreen.routeName: (context) => const AllGroupsScreen(),
  GroupScreen.routeName: (context) => const GroupScreen(),

  HomeScreen.routeName: (context) => const HomeScreen(),
  AddLocationScreen.routeName: (context) => const AddLocationScreen(),
  AllLocationsScreen.routeName: (context) => const AllLocationsScreen(),
  // LocationsScreen.routeName:(context) => LocationsScreen(image: image),
  ViewProfileScreen.routeName: (context) => const ViewProfileScreen(),
  EditProfileScreen.routeName: (context) => const EditProfileScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  AddTripScreen.routeName: (context) => const AddTripScreen(),
  TripsScreen.routeName: (context) => const TripsScreen(),
};
