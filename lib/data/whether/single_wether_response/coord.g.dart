// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordResponse _$CoordResponseFromJson(Map<String, dynamic> json) =>
    CoordResponse(
      lon: (json['lon'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoordResponseToJson(CoordResponse instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
