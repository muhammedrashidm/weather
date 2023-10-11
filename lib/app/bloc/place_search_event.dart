part of 'place_search_bloc.dart';

@freezed
class PlaceSearchEvent with _$PlaceSearchEvent {
  const factory PlaceSearchEvent.started() = _Started;
  const factory PlaceSearchEvent.search(String key) = _PlaceSearchEventSearch;
}
