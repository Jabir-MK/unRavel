import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_application/api/api_endpoints/api_endpoints.dart';
import 'package:travel_application/api/models/location_model.dart';

import '../../../core/methods.dart';
import '../../groups/all_groups_screen.dart';
import '../../groups/group_screen.dart';
import '../../locations/all_locations_screen.dart';
import '../../locations/location_screen.dart';
import 'package:http/http.dart' as http;
import '../../trips/trips_screen.dart';

class HomeController with ChangeNotifier {
  void goToLocation(context, item) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationsScreen(image: item)));
  }

  void showLocations(context) {
    pushScreen(AllLocationsScreen.routeName, context);
  }

  void goToTrips(context) {
    pushScreen(TripsScreen.routeName, context);
  }

  void goToGroups(context) {
    pushScreen(GroupScreen.routeName, context);
  }

  void showGroups(context) {
    pushScreen(AllGroupsScreen.routeName, context);
  }

//
  List<String> imgSrc = [];
  List<LocationModel> locations = [];

  Future<List<LocationModel>> getLocations() async {
    log('Fetching Locations');
    const url = baseUrl + allLocations;
    log('1');
    final uri = Uri.parse(url);
    log('2');

    final response = await http.get(uri);
    log('3');

    final body = response.body;
    log('4');

    final jsonData = jsonDecode(body);
    log('5');

    final results = jsonData as List<dynamic>;

    log('6');

    for (var i = 0; i < results.length; i++) {
      log('for loop');
      if (results[i]['images']['photos'].isNotEmpty) {
        imgSrc.add(results[i]['images']['photos'][0]['src']['medium']);
      }
    }
    log('upto 6');
    try {
      locations = results.map((e) {
        return LocationModel.fromJson(e);
      }).toList();
    } catch (e) {
      log(e.toString(), name: 'error');
    }

    log('7');
    log('Fetch Complete');
    notifyListeners();
    return locations;
  }
}
