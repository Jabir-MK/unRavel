import 'package:travel_application/api/models/location/fields/src.dart';

class Photos {
  final Src src;

  Photos({
    required this.src,
  });

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      src: json['src'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['src'] = src.toJson();
    return data;
  }
}
