class SearchResultModal {
  String name;
  Map<String, dynamic>? localNames;
  double lat;
  double lon;
  String country;
  String state;

  SearchResultModal({
    required this.name,
    this.localNames,
    required this.lat,
    required this.lon,
    required this.country,
    required this.state,
  });

}
