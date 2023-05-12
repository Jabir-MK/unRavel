import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/core/colors.dart';
import 'package:travel_application/core/routes.dart';
import 'package:travel_application/screens/groups/add_group/controller/add_group_controller.dart';
import 'package:travel_application/screens/groups/controller/group_controller.dart';
import 'package:travel_application/screens/home/controller/home_controller.dart';
import 'package:travel_application/screens/locations/add_location/controller/controller.dart';
import 'package:travel_application/screens/locations/controller/location_controller.dart';
import 'package:travel_application/screens/profile/controller/profile_controller.dart';
import 'package:travel_application/screens/profile/edit/controller/edit_profile_controller.dart';
import 'package:travel_application/screens/sign_in/controller/sign_in_controller.dart';
import 'package:travel_application/screens/sign_in/controller/sign_up_controller.dart';
import 'package:travel_application/screens/sign_in/sign_in_screen.dart';
import 'package:travel_application/screens/trips/add_trip/controller/add_trip_controller.dart';
import 'package:travel_application/screens/trips/controller/trips_controller.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController()),
        ChangeNotifierProvider(create: (context) => GroupController()),
        ChangeNotifierProvider(create: (context) => NewGroupController()),
        ChangeNotifierProvider(create: (context) => AddLocationController()),
        ChangeNotifierProvider(create: (context) => LocationController()),
        ChangeNotifierProvider(create: (context) => ProfileController()),
        ChangeNotifierProvider(create: (context) => EditProfileController()),
        ChangeNotifierProvider(create: (context) => SignInController()),
        ChangeNotifierProvider(create: (context) => SignUpController()),
        ChangeNotifierProvider(create: (context) => TripsController()),
        ChangeNotifierProvider(create: (context) => NewTripController()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: backGroundColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const SignInScreen(),
        routes: routes,
      ),
    );
  }
}
