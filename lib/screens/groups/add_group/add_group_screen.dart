import 'package:flutter/material.dart';

import '../../../core/methods.dart';
import '../../profile/profile_screen.dart';
import '../../widgets/custom_appbar.dart';

class AddGroupScreen extends StatelessWidget {
  const AddGroupScreen({super.key});
  static String routeName = 'AddGroupScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: CustomAppbar(
            leadIcon: Icons.arrow_back_rounded,
            tailIcon: Icons.person_outline_rounded,
            leadAction: () => popScreen(context),
            tailAction: () => pushScreen(ViewProfileScreen.routeName, context),
          ),
        ),
        // body: ,
      ),
    );
  }
}
