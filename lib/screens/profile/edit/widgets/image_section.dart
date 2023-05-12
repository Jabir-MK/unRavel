import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';

class ImageSectionEdit extends StatelessWidget {
  const ImageSectionEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: appBarColor,
        borderRadius: jLRadius,
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 10,
            color: jBlackShade,
          ),
          BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 10,
            color: jLightBlack,
          ),
        ],
      ),
      child: Column(
        children: [
          jMHeightBox,
          GestureDetector(
            onTap: () {
              log('Image Edit');
            },
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 75,
                ),
                Positioned(
                  left: 100,
                  top: 100,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: jWhite,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit_rounded,
                        color: jGreen,
                        size: 30,
                      ),
                      onPressed: () {
                        log('Image Edit Icon ');
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          jSeperatorBox,
          const Text(
            'User Name',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
          jSHeightBox,
          const Text(
            'City , State , Country',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          jMHeightBox,
        ],
      ),
    );
  }
}
