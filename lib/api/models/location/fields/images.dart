// import 'package:travel_application/api/models/location/fields/photos.dart';

// class Images {
//   Images({
//     required this.photos,
//   });

//   final List<Photo> photos;

//   factory Images.fromMap(Map<String, dynamic> json) {
//     //
//     return Images(
//       photos: json['photos'],
//     );
//   }
// }

import 'package:travel_application/api/models/location/fields/photos.dart';

class Images {
  final List<Photos>? photos;

  Images({
    required this.photos,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      photos: json['photos'] ?? json['photos'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['photos'] = photos?.map((v) => v.toJson()).toList();
    return data;
  }
}
