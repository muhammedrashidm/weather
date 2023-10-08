import 'package:json_annotation/json_annotation.dart';
import 'package:whether/data/whether/single_wether_response/coord.dart';


part 'city.g.dart';

@JsonSerializable()
class CityResponse {
  int? id;
  String? name;
  CoordResponse? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  CityResponse({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  factory CityResponse.fromJson(Map<String, dynamic> json) => _$CityResponseFromJson(json);

}
