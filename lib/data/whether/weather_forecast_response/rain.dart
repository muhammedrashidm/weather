import 'package:json_annotation/json_annotation.dart';

part 'rain.g.dart';

@JsonSerializable()
class RainResponse {
	double? h;

	RainResponse({this.h});

	factory RainResponse.fromJson(Map<String, dynamic> json) => _$RainResponseFromJson(json);

}
