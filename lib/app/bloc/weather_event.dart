part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.started() = _WeatherEventStarted;
  const factory WeatherEvent.fetchWithCords({
    required double lat,
    required double long,
  }) = _WeatherEventFetchWithCord;

  const factory WeatherEvent.getForecastData(
  {
    required double lat,
    required double long,
}
      ) = _WeatherEventGetForecastData;
}
