import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';

@JsonSerializable()
class WindResponse {
  double? speed;
  int? deg;
  double? gust;

  WindResponse({this.speed, this.deg, this.gust});

  factory WindResponse.fromJson(Map<String, dynamic> json) =>
      _$WindResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WindResponseToJson(this);
}
