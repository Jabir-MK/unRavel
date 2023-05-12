import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/screens/sign_in/sign_up_screen.dart';

import '../../../core/constants.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushScreen(SignUpScreen.routeName, context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: jSRadius,
          color: jWhite,
          boxShadow: [
            BoxShadow(
              offset: const Offset(8, 10),
              color: jBlack.withOpacity(0.7),
              blurRadius: 15,
            ),
          ],
        ),
        padding: const EdgeInsets.all(jDefaultPadding),
        child: const Text(
          'Create Account',
          style: TextStyle(
            fontSize: 18,
            color: jBlack,
            fontWeight: FontWeight.w300,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
