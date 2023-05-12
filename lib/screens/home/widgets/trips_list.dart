import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/trips/trips_screen.dart';
import 'package:travel_application/screens/widgets/follow_button.dart';

class TripsList extends StatelessWidget {
  const TripsList({
    super.key,
  });

  Future<void> waiting() async {
    Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: jDefaultPadding),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              pushScreen(TripsScreen.routeName, context);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: jDefaultPadding, vertical: jDefaultPadding * 2),
              padding: const EdgeInsets.only(
                top: jDefaultPadding - 5,
              ),
              width: 230,
              decoration: BoxDecoration(
                color: jTripContainerColor,
                borderRadius: jLRadius,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5, 5),
                    color: jBlackShade,
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    offset: Offset(-5, -5),
                    color: jLightBlack,
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(radius: 25),
                      Text(
                        'RedLine',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      FollowButton(),
                    ],
                  ),
                  jSeperatorBox,
                  Container(
                    margin: const EdgeInsets.only(left: jDefaultPadding + 5),
                    height: 125,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: jSRadius,
                      image: const DecorationImage(
                        image: AssetImage('images/spot2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  jSeperatorBox,
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: jDefaultPadding),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'From Tirur ,Kerala , India',
                              style: TextStyle(
                                fontSize: 18,
                                color: jBlack,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            jSHeightBox,
                            Text(
                              'To Petra',
                              style: TextStyle(
                                fontSize: 22,
                                color: jBlackShade,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            jSHeightBox,
                            Text(
                              'Posted on Mar 23 2023',
                              style: TextStyle(
                                fontSize: 12,
                                color: jBlack,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
