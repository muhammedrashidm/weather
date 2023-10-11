import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
import 'package:whether/data/whether/single_wether_response/clouds.dart';
import 'package:whether/data/whether/single_wether_response/weather.dart';
import 'package:whether/data/whether/single_wether_response/wind.dart';

import 'main.dart';
import 'rain.dart';
import 'sys.dart';

part 'list.g.dart';

@JsonSerializable()
class WeatherForecastItemResponse {
  int? dt;
  ForecastMainResponse? main;
  List<WeatherResponse>? weather;
  CloudsResponse? clouds;
  WindResponse? wind;
  int? visibility;
  double? pop;
  RainResponse? rain;
  SysForecastResponse? sys;
  @JsonKey(name: 'dt_txt')
  String? dtTxt;

  WeatherForecastItemResponse({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.rain,
    this.sys,
    this.dtTxt,
  });

  factory WeatherForecastItemResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastItemResponseFromJson(json);
}
