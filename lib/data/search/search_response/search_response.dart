import 'package:json_annotation/json_annotation.dart';


part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  String? name;
  @JsonKey(name: 'local_names')
  Map<String,dynamic>? localNames;
  double? lat;
  double? lon;
  String? country;
  String? state;

  SearchResponse({
    this.name,
    this.localNames,
    this.lat,
    this.lon,
    this.country,
    this.state,
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
