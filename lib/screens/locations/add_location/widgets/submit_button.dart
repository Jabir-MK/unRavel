import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/methods.dart';

import '../../../../core/colors.dart';
import '../../../../core/constants.dart';
import '../../../../core/widgets.dart';

class SubmitLocationButton extends StatelessWidget {
  const SubmitLocationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Location Added');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            elevation: 15,
            margin: const EdgeInsets.all(jDefaultPadding + 5),
            backgroundColor: appBarColor,
            behavior: SnackBarBehavior.floating,
            content: Row(
              children: const [
                Icon(
                  Icons.verified_outlined,
                  color: Colors.blue,
                ),
                jSeperatorSpacer,
                Text(
                  'Location Added Successfully',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: jBlack,
                  ),
                )
              ],
            ),
          ),
        );
        popScreen(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: jDefaultPadding + 5,
          vertical: jDefaultPadding,
        ),
        decoration: BoxDecoration(
          color: jMuddyColor,
          borderRadius: jMRadius,
          boxShadow: const [
            BoxShadow(
              offset: Offset(-5, -5),
              blurRadius: 15,
              color: jMediocreBlack,
            ),
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 15,
              color: jMediocreDarkBlack,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.check_rounded,
              size: 30,
              color: jWhite,
            ),
            jSeperatorSpacer,
            Text(
              'Add Location',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: jWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
