import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';

class TextFieldLocation extends StatelessWidget {
  const TextFieldLocation({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
              child: Divider(
                color: backGroundColor,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: jWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Divider(
                color: backGroundColor,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
            ),
          ],
        ),
        jSeperatorBox,
        Container(
          decoration: BoxDecoration(
            borderRadius: jLRadius,
            color: jMediocreBlack,
          ),
          padding: const EdgeInsets.symmetric(horizontal: jDefaultPadding + 5),
          child: TextFormField(
            style: const TextStyle(
              color: jWhite,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              fontSize: 18,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: jWhite,
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        )
      ],
    );
  }
}
