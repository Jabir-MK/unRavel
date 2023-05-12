import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/methods.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/locations/add_location/widgets/submit_button.dart';
import 'package:travel_application/screens/locations/add_location/widgets/textfield_custom.dart';
import 'package:travel_application/screens/profile/profile_screen.dart';
import 'package:travel_application/screens/widgets/custom_appbar.dart';

enum CountryVal {
  india,
  afghanistan,
  france,
  china,
}

class AddLocationScreen extends StatelessWidget {
  const AddLocationScreen({super.key});
  static String routeName = 'Add_Location_Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/map.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
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
          body: Padding(
            padding: const EdgeInsets.all(jDefaultPadding),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  jLHeightBox,
                  TextFieldLocation(
                    title: 'Spot',
                    hintText: 'Enter Spot Name',
                  ),
                  jLHeightBox,
                  TextFieldLocation(
                    title: 'Country',
                    hintText: 'Select Country Name',
                  ),
                  jLHeightBox,
                  TextFieldLocation(
                    title: 'State',
                    hintText: 'Select State Name',
                  ),
                  jLHeightBox,
                  TextFieldLocation(
                    title: 'City',
                    hintText: 'Select City Name',
                  ),
                  jLHeightBox,
                  SubmitLocationButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
