class Address {
  final String spot;
  final String city;
  final String state;
  final String country;

  Address({
    required this.spot,
    required this.city,
    required this.state,
    required this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      spot: json['spot'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['spot'] = spot;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    return data;
  }
}
