import 'package:dartz/dartz.dart' as dartz;
import 'package:whether/app/weather-bloc/weather_bloc.dart';
import 'package:whether/domain/whether/modals.dart';

abstract class IWhetherRepo {
  Future<dartz.Either<Failure, SingleWhetherModal>> getWhetherData({
    required String lat,
    required String long,
  });

  Future<dartz.Either<Failure, WetherForecastModal>> getWeatherForecast({
    required String lat,
    required String long,
  });

  Future<dartz.Either<Failure, dynamic>> saveForecastToHive(
      {required List<DayWeatherData> weatherData});
  Future<dartz.Either<Failure, List<DayWeatherData>>> readFromHive();
}

class Failure {
  final String message;
  final int code;

  Failure({required this.message, required this.code});
}
