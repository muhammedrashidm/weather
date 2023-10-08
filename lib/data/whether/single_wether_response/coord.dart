import 'package:json_annotation/json_annotation.dart';

part 'coord.g.dart';

@JsonSerializable()
class CoordResponse {
  double? lon;
  double? lat;

  CoordResponse({this.lon, this.lat});

  factory CoordResponse.fromJson(Map<String, dynamic> json) =>
      _$CoordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoordResponseToJson(this);
}
