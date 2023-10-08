import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:whether/data/core/dio.dart';
import 'package:whether/data/core/mapper.dart';
import 'package:whether/data/whether/single_wether_response/single_wether_response.dart';
import 'package:whether/data/whether/weather_forecast_response/weather_forecast_response.dart';
import 'package:whether/domain/whether/i_rpeo.dart';
import 'package:whether/domain/whether/modals.dart';

class WeatherRepo extends IWhetherRepo {
  final DioManager dio;
  WeatherRepo({required this.dio});
  @override
  Future<Either<Failure, SingleWhetherModal>> getWhetherData(
      {required String lat, required String long}) async {
    try {
      final resp = await dio.get('/data/2.5/weather', queryParameters: {
        "lat": lat,
        "lon": long,
      });
      if (resp.statusCode == 200) {
        return Right(SingleWetherResponse.fromJson(resp.data).toDomain());
      } else {
        return Left(Failure(
            message: resp.statusMessage ?? '', code: resp.statusCode ?? 0));
      }
    } on DioException catch (e) {
      return Left(
          Failure(message: e.message ?? '', code: e.response?.statusCode ?? 0));
    } catch (e) {
      return Left(Failure(message: e.toString() ?? '', code: 0));
    }
  }

  @override
  Future<Either<Failure, WetherForecastModal>> getWeatherForecast(
      {required String lat, required String long}) async {
    try {
      final resp = await dio.get('/data/2.5/forecast',
          queryParameters: {"lat": lat, "lon": long, 'cnt': 16});
      if (resp.statusCode == 200) {
        return Right(WeatherForecastResponse.fromJson(resp.data).toDomain());
      } else {
        return Left(Failure(
            message: resp.statusMessage ?? '', code: resp.statusCode ?? 0));
      }
    } on DioException catch (e) {
      return Left(
          Failure(message: e.message ?? '', code: e.response?.statusCode ?? 0));
    } catch (e) {
      return Left(Failure(message: e.toString() ?? '', code: 0));
    }
  }
}

///data/2.5/forecast
