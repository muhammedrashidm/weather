part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial(
      {SingleWhetherModal? whetherModal,
      required bool isLoading,
      required bool hasError,
        required List<DayWeatherData> forecast,
      String? errorMessage}) = _Initial;
}
