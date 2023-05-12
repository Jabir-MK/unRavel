import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/groups/group_screen.dart';
import 'package:travel_application/screens/widgets/follow_button.dart';

class GroupsList extends StatelessWidget {
  const GroupsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              pushScreen(GroupScreen.routeName, context);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: jDefaultPadding,
                vertical: jDefaultPadding + 5,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: jDefaultPadding,
                vertical: jDefaultPadding + 4,
              ),
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
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/spot1.jpg'),
                  ),
                  jSWidthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Group Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      jSeperatorBox,
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const FollowButton()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
