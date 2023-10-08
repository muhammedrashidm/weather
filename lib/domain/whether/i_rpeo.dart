import 'package:dartz/dartz.dart' as dartz;
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
}

class Failure {
  final String message;
  final int code;

  Failure({required this.message, required this.code});
}
