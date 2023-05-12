import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/profile/widgets/basic_info.dart';
import 'package:travel_application/screens/profile/widgets/detailed_info.dart';
import 'package:travel_application/screens/profile/widgets/social_media_info.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  static String routeName = 'View_Profile_Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: CustomAppbar(
            leadIcon: Icons.arrow_back_rounded,
            tailIcon: Icons.logout,
            leadAction: () => popScreen(context),
            tailAction: () => log('Sign Out Clicked'),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(jDefaultPadding + 5),
          physics: const BouncingScrollPhysics(),
          children: const [
            BasicInfo(),
            jLHeightBox,
            SocialMediaInfo(),
            jLHeightBox,
            DetailedInfo(),
          ],
        ),
      ),
    );
  }
}
