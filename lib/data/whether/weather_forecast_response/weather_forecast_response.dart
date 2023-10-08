import 'package:json_annotation/json_annotation.dart';

import 'city.dart';
import 'list.dart';

part 'weather_forecast_response.g.dart';

@JsonSerializable()
class WeatherForecastResponse {
  String? cod;
  int? message;
  int? cnt;
  List<WeatherForecastItemResponse>? list;
  CityResponse? city;

  WeatherForecastResponse({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  factory WeatherForecastResponse.fromJson(Map<String, dynamic> json) {
    return _$WeatherForecastResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeatherForecastResponseToJson(this);
}
