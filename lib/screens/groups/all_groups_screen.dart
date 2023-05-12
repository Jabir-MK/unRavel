import 'package:flutter/material.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/screens/profile/profile_screen.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

class AllGroupsScreen extends StatelessWidget {
  const AllGroupsScreen({super.key});
  static String routeName = 'All_Groups_Screen';

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
      ),
    );
  }
}
