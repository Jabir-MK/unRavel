import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class FormFieldSignUp extends StatelessWidget {
  const FormFieldSignUp({
    super.key,
    required this.obscureText,
    required this.hintText,
  });
  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding + 5),
      decoration: BoxDecoration(
        color: appBarColor,
        borderRadius: jMRadius,
        boxShadow: const [
          BoxShadow(
            offset: Offset(8, 10),
            blurRadius: 15,
            color: jBlackShade,
            spreadRadius: 1,
          ),
        ],
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 18,
            letterSpacing: 1,
            color: jGrey,
          ),
        ),
      ),
    );
  }
}
