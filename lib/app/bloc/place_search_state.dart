part of 'place_search_bloc.dart';

@freezed
class PlaceSearchState with _$PlaceSearchState {
  const factory PlaceSearchState.initial({
    required bool isLoading,
    required bool hasError,
    String? errorMessage,
    required List<SearchResultModal> result
}) = _Initial;
}
