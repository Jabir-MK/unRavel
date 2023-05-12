import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/trips/widgets/custom_row_details.dart';

class TripsBottomBar extends StatelessWidget {
  const TripsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.only(
        top: jDefaultPadding * 2,
        left: jDefaultPadding * 2,
        right: jDefaultPadding * 2,
      ),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              child: Row(
                children: [
                  const Text(
                    'City Name.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      log('Group Info');
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: jDefaultPadding + 5,
                        vertical: jDefaultPadding + 5,
                      ),
                      padding: const EdgeInsets.all(jDefaultPadding - 5),
                      decoration: BoxDecoration(
                        borderRadius: jSRadius,
                        color: appBarColor,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 2),
                            color: jBlackShade,
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            offset: Offset(-2, -2),
                            color: jMediocreDarkBlack,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Text(
                        'Group Name',
                        style: TextStyle(
                          color: jGreen,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            jMHeightBox,
            const CustomRowTripDetails(
                headText: 'Trip Location', valText: 'Location Name'),
            jMHeightBox,
            SizedBox(
              height: 85,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: jDefaultPadding - 5),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: jLRadius,
                        image: DecorationImage(
                          image: AssetImage('images/spot${index + 1}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            jMHeightBox,
            const CustomRowTripDetails(headText: 'Date', valText: 'Mar 5th 23'),
            jSeperatorBox,
            const CustomRowTripDetails(
                headText: 'Travel Mode', valText: 'On Plane'),
            jSeperatorBox,
            const CustomRowTripDetails(
                headText: 'Type', valText: 'New Experience'),
            jSeperatorBox,
            const CustomRowTripDetails(
                headText: 'Status', valText: 'Waiting for members'),
            jSeperatorBox,
            const CustomRowTripDetails(
                headText: 'Created By', valText: 'Admin'),
            jSHeightBox,
          ],
        ),
      ),
    );
  }
}
