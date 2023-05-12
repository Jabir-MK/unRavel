import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({
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
            color: jBlackShade,
            spreadRadius: 1,
            blurRadius: 15,
          ),
          BoxShadow(
            offset: Offset(-5, -5),
            color: jLightBlack,
            spreadRadius: 1,
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          jSHeightBox,
          const CircleAvatar(radius: 85),
          jSHeightBox,
          const Text(
            'User Name',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          jSHeightBox,
          const Text('About Me'),
          const Text('- - -'),
          jMHeightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Text(
                    'Followers : ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    '14',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Following : ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    '3',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          jMHeightBox,
        ],
      ),
    );
  }
}
