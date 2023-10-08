import 'package:json_annotation/json_annotation.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

part 'single_wether_response.g.dart';

@JsonSerializable()
class SingleWetherResponse {
  CoordResponse? coord;
  List<WeatherResponse>? weather;
  String? base;
  MainResponse? main;
  int? visibility;
  WindResponse? wind;
  CloudsResponse? clouds;
  int? dt;
  SysResponse? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  SingleWetherResponse({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory SingleWetherResponse.fromJson(Map<String, dynamic> json) {
    return _$SingleWetherResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SingleWetherResponseToJson(this);
}
