import 'location/fields/address.dart';
import 'location/fields/images.dart';

class LocationModel {
  final Address address;
  final Images images;
  String? createdDate;
  LocationAddedBy? locationAddedBy;

  LocationModel({
    required this.address,
    required this.images,
    this.createdDate,
    this.locationAddedBy,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      address: json['address'],
      images: json['images'],
      createdDate: json['created_date'],
      locationAddedBy: json['location_added_by'] != null
          ? LocationAddedBy.fromJson(json['location_added_by'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address.toJson();
    data['images'] = images.toJson();
    data['created_date'] = createdDate;
    if (locationAddedBy != null) {
      data['location_added_by'] = locationAddedBy!.toJson();
    }
    return data;
  }
}

class LocationAddedBy {
  Location? location;
  String? sId;
  String? firebaseId;
  String? firstName;
  String? lastName;
  String? email;
  bool? emailVerified;
  String? createdDate;
  int? iV;

  LocationAddedBy(
      {this.location,
      this.sId,
      this.firebaseId,
      this.firstName,
      this.lastName,
      this.email,
      this.emailVerified,
      this.createdDate,
      this.iV});

  LocationAddedBy.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    sId = json['_id'];
    firebaseId = json['firebase_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    emailVerified = json['email_verified'];
    createdDate = json['created_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['_id'] = sId;
    data['firebase_id'] = firebaseId;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['email_verified'] = emailVerified;
    data['created_date'] = createdDate;
    data['__v'] = iV;
    return data;
  }
}

class Location {
  String? country;
  String? state;
  String? city;

  Location({this.country, this.state, this.city});

  Location.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    state = json['state'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['state'] = state;
    data['city'] = city;
    return data;
  }
}
