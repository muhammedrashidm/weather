import 'package:json_annotation/json_annotation.dart';

part 'sys.g.dart';

@JsonSerializable()
class SysResponse {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  SysResponse({this.type, this.id, this.country, this.sunrise, this.sunset});

  factory SysResponse.fromJson(Map<String, dynamic> json) =>
      _$SysResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SysResponseToJson(this);
}
