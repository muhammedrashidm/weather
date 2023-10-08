import 'package:json_annotation/json_annotation.dart';

part 'clouds.g.dart';

@JsonSerializable()
class CloudsResponse {
  int? all;

  CloudsResponse({this.all});

  factory CloudsResponse.fromJson(Map<String, dynamic> json) {
    return _$CloudsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CloudsResponseToJson(this);
}
