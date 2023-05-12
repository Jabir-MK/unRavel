import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/profile/widgets/edit_button.dart';
import 'package:travel_application/screens/widgets/custom_row.dart';

class DetailedInfo extends StatelessWidget {
  const DetailedInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.all(jDefaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              Spacer(),
              EditProfileButton(),
            ],
          ),
          jSHeightBox,
          const CustomRow(headText: 'First Name', valText: 'User'),
          const CustomRow(headText: 'Last Name', valText: 'Name'),
          const CustomRow(
            headText: 'E-Mail',
            valText: 'example@gmail.com',
          ),
          const CustomRow(
              headText: 'Location', valText: 'City , State , Country'),
        ],
      ),
    );
  }
}
