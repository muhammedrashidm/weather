import 'package:json_annotation/json_annotation.dart';

part 'sys.g.dart';

@JsonSerializable()
class SysForecastResponse {
  String? pod;

  SysForecastResponse({this.pod});

  factory SysForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$SysForecastResponseFromJson(json);
}
