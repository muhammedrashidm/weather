import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:whether/app/weather-bloc/weather_bloc.dart';
import 'package:whether/data/core/dio.dart';
import 'package:whether/data/core/mapper.dart';
import 'package:whether/data/whether/hive_adapters/day_data.dart';
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

  @override
  Future<Either<Failure, List<DayWeatherData>>> readFromHive() async {
    var forecast = await Hive.openBox<DayWeatherDataHive>('forecast');
    final resp = forecast.values.toList();
    if (resp.isEmpty) return Left(Failure(message: "Empty cache", code: 0));
    Iterable<DayWeatherData> data = resp.map((el) => DayWeatherData(
        list: el.list
            .map((e) => SingleWeatherData(
                desc: e.desc,
                temp: e.temp,
                humidity: e.humidity,
                dateTime: e.dateTime,
                icon: e.icon,
                city: e.city,
                main: e.main,
                country: e.country))
            .toList(),
        dateTime: el.dateTime));
    forecast.close();
    if (data.isEmpty) {
      return Left(
          Failure(message: "Hive read operation failed or its empty", code: 0));
    } else {
      return Right(data.toList());
    }
  }

  @override
  Future<Either<Failure, bool>> saveForecastToHive(
      {required List<DayWeatherData> weatherData}) async {
    try {
      var forecast = await Hive.openBox<DayWeatherDataHive>('forecast');
      if (forecast.isNotEmpty) {
        forecast.clear();
      }
      var data = weatherData.map((el) => DayWeatherDataHive(
          list: el.list
              .map((e) => SingleWeatherDataHive(
                  desc: e.desc,
                  temp: e.temp,
                  humidity: e.humidity,
                  dateTime: e.dateTime,
                  icon: e.icon,
                  city: e.city,
                  main: e.main,
                  country: e.country))
              .toList(),
          dateTime: el.dateTime));
      final res = await forecast.addAll(data);
      forecast.close();
      if (res.isEmpty) {
        return Left(Failure(message: "Hive write operation failed", code: 0));
      } else {
        return const Right(true);
      }
    } catch (e) {
      return Left(Failure(message: "Hive write operation failed", code: 0));
    }
  }
}

///data/2.5/forecast
