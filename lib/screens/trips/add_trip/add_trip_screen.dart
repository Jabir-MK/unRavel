import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/trips/add_trip/widgets/formfield_trip.dart';
import 'package:travel_application/screens/trips/add_trip/widgets/title_section.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

import '../../profile/profile_screen.dart';

class AddTripScreen extends StatelessWidget {
  const AddTripScreen({super.key});

  static String routeName = 'Add_Trip_Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/spot3.jpg'),
          opacity: 0.8,
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
              leadAction: () => popScreen(context),
              tailAction: () =>
                  pushScreen(ViewProfileScreen.routeName, context),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const TitleContainer(),
                jLHeightBox,
                Container(
                  decoration: BoxDecoration(
                    color: jGrey.withOpacity(0.3),
                    borderRadius: jLRadius,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: jLightBlack,
                      ),
                      BoxShadow(
                        offset: Offset(-5, -5),
                        blurRadius: 15,
                        spreadRadius: 1,
                        color: jLightBlack,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const TripFormField(
                        fieldTitle: 'Trip Location',
                        hintText: 'Select Location',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Select Group',
                        fieldTitle: 'Group',
                      ),
                      const TripFormField(
                        hintText: 'Select Type',
                        fieldTitle: 'Trip Type',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Select Expense',
                        fieldTitle: 'Expected Expense',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Select Travel Mode',
                        fieldTitle: 'Travel Mode',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Select Accomodations',
                        fieldTitle: 'Stay',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Select Food',
                        fieldTitle: 'Food',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Select Date',
                        fieldTitle: 'Planned Date',
                      ),
                      jSHeightBox,
                      const TripFormField(
                        hintText: 'Give Description',
                        fieldTitle: 'Other Details',
                      ),
                      jLHeightBox,
                      InkWell(
                        onTap: () {
                          log('Trip Added');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: backGroundColor,
                              behavior: SnackBarBehavior.floating,
                              margin: const EdgeInsets.all(jDefaultPadding * 2),
                              content: Row(
                                children: const [
                                  Icon(
                                    Icons.verified_outlined,
                                    color: Colors.blue,
                                    size: 28,
                                  ),
                                  jSeperatorSpacer,
                                  Text(
                                    'Trip Added Successfully',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: jBlack,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                          popScreen(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: jDefaultPadding + 5,
                            vertical: jDefaultPadding + 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: jMRadius,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(5, 5),
                                blurRadius: 10,
                                spreadRadius: 1,
                                color: jMediocreBlack,
                              ),
                              BoxShadow(
                                offset: Offset(-5, -5),
                                blurRadius: 10,
                                spreadRadius: 1,
                                color: jLightBlack,
                              ),
                            ],
                            color: jMuddyColor.withOpacity(0.6),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.check_rounded,
                                color: jWhite,
                                size: 30,
                              ),
                              jSWidthBox,
                              Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: jWhite,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      jLHeightBox,
                    ],
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
