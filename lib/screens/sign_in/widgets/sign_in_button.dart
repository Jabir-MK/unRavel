import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/methods.dart';

import '../../../core/constants.dart';
import '../../home/home_screen.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.email,
    required this.password,
  });
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log(email, name: 'Email');
        log(password, name: 'Password');
        // FirebaseAuth.instance
        //     .signInWithEmailAndPassword(
        //   email: email,
        //   password: password,
        // )
        //     .then((value) {
        //   pushScreen(HomeScreen.routeName, context);
        // });
        pushScreen(HomeScreen.routeName, context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: jSRadius,
          color: jMuddyColor,
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
          'Sign In',
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
