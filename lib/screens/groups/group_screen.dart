import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

import '../profile/profile_screen.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  static String routeName = 'Group_Screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/spot1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: jTransparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: CustomAppbar(
              leadIcon: Icons.arrow_back_rounded,
              tailIcon: Icons.person_outline_rounded,
              leadAction: () {
                popScreen(context);
              },
              tailAction: () {
                log('Profile Clicked');
                pushScreen(ViewProfileScreen.routeName, context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: jDefaultPadding,
              left: jDefaultPadding + 5,
              right: jDefaultPadding + 5,
              bottom: jDefaultPadding + 5,
            ),
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: backGroundColor,
                      borderRadius: jLRadius,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(5, 5),
                          color: jDarkGrey,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          offset: const Offset(-5, -5),
                          color: jMediocreGrey,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        jLHeightBox,
                        const CircleAvatar(radius: 70),
                        jSHeightBox,
                        const Text(
                          'Group Name',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        jMHeightBox,
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: jDefaultPadding),
                          child: Text(
                            'Description of the group contains here. some random quotes of messages related to the group Description of the group contains here. some random quotes of messages related to the group Description of the group contains here. some random quotes of messages related to the group ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: jBlackShade,
                            ),
                          ),
                        ),
                        const SizedBox(height: jDefaultPadding * 3),
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
                                  'Members : ',
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
                        const Divider(
                          color: jBlack,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                        jSeperatorBox,
                        SizedBox(
                          height: 125,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return jSeperatorBox;
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${index + 1}.',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  jSWidthBox,
                                  const CircleAvatar(
                                    radius: 15,
                                  ),
                                  jSWidthBox,
                                  const Text('Member Name'),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
