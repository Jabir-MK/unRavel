import 'package:flutter/material.dart';
import 'package:travel_application/core/methods.dart';

import '../profile/profile_screen.dart';
import '../widgets/custom_appbar.dart';

class AllLocationsScreen extends StatelessWidget {
  const AllLocationsScreen({super.key});
  static String routeName = 'All_Locations_Screen';

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
            tailAction: () => pushScreen(ViewProfileScreen.routeName, context),
          ),
        ),
        body: InkWell(
          onTap: () {},
          child: const Center(),
        ),
      ),
    );
  }
}
