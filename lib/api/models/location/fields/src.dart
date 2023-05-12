// class Src {
//   Src({
//     required this.original,
//     required this.large2X,
//     required this.large,
//     required this.medium,
//     required this.small,
//     required this.portrait,
//     required this.landscape,
//     required this.tiny,
//   });

//   final String original;
//   final String large2X;
//   final String large;
//   final String medium;
//   final String small;
//   final String portrait;
//   final String landscape;
//   final String tiny;

//   factory Src.fromMap(Map<String, dynamic> json) => Src(
//         original: json["original"],
//         large2X: json["large2x"],
//         large: json["large"],
//         medium: json["medium"],
//         small: json["small"],
//         portrait: json["portrait"],
//         landscape: json["landscape"],
//         tiny: json["tiny"],
//       );

//   Map<String, dynamic> toJson() => {
//         "original": original,
//         "large2x": large2X,
//         "large": large,
//         "medium": medium,
//         "small": small,
//         "portrait": portrait,
//         "landscape": landscape,
//         "tiny": tiny,
//       };
// }

class Src {
  final String original;
  final String large2x;
  final String large;
  final String medium;
  final String small;
  final String portrait;
  final String landscape;
  final String tiny;

  Src({
    required this.original,
    required this.large2x,
    required this.large,
    required this.medium,
    required this.small,
    required this.portrait,
    required this.landscape,
    required this.tiny,
  });

  factory Src.fromJson(Map<String, dynamic> json) {
    return Src(
      original: json['original'],
      large2x: json['large2x'],
      large: json['large'],
      medium: json['medium'],
      small: json['small'],
      portrait: json['portrait'],
      landscape: json['landscape'],
      tiny: json['tiny'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['original'] = original;
    data['large2x'] = large2x;
    data['large'] = large;
    data['medium'] = medium;
    data['small'] = small;
    data['portrait'] = portrait;
    data['landscape'] = landscape;
    data['tiny'] = tiny;
    return data;
  }
}
