import 'dart:convert';

class CurrentModle {
  final String current;
  final double lat;
  final double long;
  CurrentModle({
    required this.current,
    required this.lat,
    required this.long,
  });

  CurrentModle copyWith({
    String? current,
    double? lat,
    double? long,
  }) {
    return CurrentModle(
      current: current ?? this.current,
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'current': current,
      'lat': lat,
      'long': long,
    };
  }

  factory CurrentModle.fromMap(Map<String, dynamic> map) {
    return CurrentModle(
      current: map['current'],
      lat: map['lat'],
      long: map['long'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentModle.fromJson(String source) => CurrentModle.fromMap(json.decode(source));

  @override
  String toString() => 'CurrentModle(current: $current, lat: $lat, long: $long)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CurrentModle &&
      other.current == current &&
      other.lat == lat &&
      other.long == long;
  }

  @override
  int get hashCode => current.hashCode ^ lat.hashCode ^ long.hashCode;
}
