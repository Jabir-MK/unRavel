import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../../core/methods.dart';
import '../../home/home_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Sign Up Clicked');
        pushScreen(HomeScreen.routeName, context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: jDefaultPadding + 5,
          vertical: jDefaultPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: jSRadius,
          color: jMuddyColor,
          boxShadow: const [
            BoxShadow(
              offset: Offset(8, 10),
              color: jBlackShade,
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            fontSize: 18,
            color: jBlack,
          ),
        ),
      ),
    );
  }
}
