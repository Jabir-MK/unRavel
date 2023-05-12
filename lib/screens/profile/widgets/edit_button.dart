import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/profile/edit/edit_profile_screen.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Edit Profile');
        pushScreen(EditProfileScreen.routeName, context);
      },
      child: Container(
        padding: const EdgeInsets.all(jDefaultPadding),
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: jLRadius,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            jSWidthBox,
            Icon(
              Icons.edit_square,
              size: 35,
              color: jGreen,
            ),
          ],
        ),
      ),
    );
  }
}
