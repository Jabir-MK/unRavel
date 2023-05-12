import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/profile/edit/widgets/custom_edit_row.dart';
import 'package:travel_application/screens/profile/edit/widgets/image_section.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  static String routeName = 'Edit_Profile_Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: CustomAppbar(
            leadIcon: Icons.arrow_back_rounded,
            tailIcon: Icons.abc,
            leadAction: () => popScreen(context),
            tailAction: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(jDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageSectionEdit(),
                Column(
                  children: const [
                    jLHeightBox,
                    CustomEditRow(
                        headText: 'First Name', hintText: 'Enter First Name'),
                    jMHeightBox,
                    CustomEditRow(
                        headText: 'Last Name', hintText: 'Enter Last Name'),
                    jMHeightBox,
                    CustomEditRow(
                        headText: 'About Me', hintText: 'Enter Bio Details')
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            log('Edit Submit');
            // Have to show snackbar
            popScreen(context);
          },
          backgroundColor: appBarColor,
          child: Icon(
            Icons.check_rounded,
            color: backGroundColor,
            size: 50,
          ),
        ),
      ),
    );
  }
}
