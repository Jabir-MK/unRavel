import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/home/widgets/custom_title.dart';
import 'package:travel_application/screens/home/widgets/custom_trip_title.dart';
import 'package:travel_application/screens/home/widgets/group_list.dart';
import 'package:travel_application/screens/home/widgets/home_appbar.dart';
import 'package:travel_application/screens/home/widgets/location_list.dart';
import 'package:travel_application/screens/home/widgets/trips_list.dart';
import 'package:travel_application/screens/home/widgets/home_bottombar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'Home_Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: HomeAppBar(),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              CustomLocationTitle(),
              jSHeightBox,
              LocationsList(),
              jMHeightBox,
              jSHeightBox,
              CustomTitle(topHead: 'check out these', downHead: 'trips'),
              jMHeightBox,
              TripsList(),
              jMHeightBox,
              CustomTitle(topHead: 'check out these', downHead: 'groups'),
              jMHeightBox,
              GroupsList(),
            ],
          ),
        ),
        bottomNavigationBar: const HomeBottomBar(),
      ),
    );
  }
}
