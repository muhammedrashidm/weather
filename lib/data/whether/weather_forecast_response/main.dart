import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@JsonSerializable()
class ForecastMainResponse {
  double? temp;
  @JsonKey(name: 'feels_like')
  double? feelsLike;
  @JsonKey(name: 'temp_min')
  double? tempMin;
  @JsonKey(name: 'temp_max')
  double? tempMax;
  int? pressure;
  @JsonKey(name: 'sea_level')
  int? seaLevel;
  @JsonKey(name: 'grnd_level')
  int? grndLevel;
  int? humidity;
  @JsonKey(name: 'temp_kf')
  double? tempKf;

  ForecastMainResponse({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  factory ForecastMainResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastMainResponseFromJson(json);
}
