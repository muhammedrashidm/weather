// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherForecastResponse _$WeatherForecastResponseFromJson(
        Map<String, dynamic> json) =>
    WeatherForecastResponse(
      cod: json['cod'] as String?,
      message: json['message'] as int?,
      cnt: json['cnt'] as int?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) =>
              WeatherForecastItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : CityResponse.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherForecastResponseToJson(
        WeatherForecastResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
