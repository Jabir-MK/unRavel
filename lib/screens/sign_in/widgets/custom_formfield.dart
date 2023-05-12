import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
  });
  final TextEditingController controller;
  final String hintText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding + 5),
      child: Container(
        decoration: BoxDecoration(
          color: appBarColor,
          borderRadius: jMRadius,
          boxShadow: const [
            BoxShadow(
              offset: Offset(5, 5),
              color: jBlackShade,
              blurRadius: 10,
              spreadRadius: 1,
            ),
            BoxShadow(
              offset: Offset(-5, -5),
              color: jLightBlack,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: jGrey,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
