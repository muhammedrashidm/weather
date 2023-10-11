import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whether/app/weather-bloc/weather_bloc.dart';
import 'package:whether/data/whether/repo.dart';
import 'package:mockito/mockito.dart';

import 'sample_data.dart';

class MockRepository extends Mock implements WeatherRepo {}

void main() {
  late WeatherBloc bloc;
  late WeatherRepo repo;

  setUp(() {
    repo = MockRepository();
    bloc = WeatherBloc(whetherRepo: repo);
  });

  test("", () {
    expect(
        const WeatherState.initial(
            isLoading: false, hasError: false, forecast: []),
        const WeatherState.initial(
            isLoading: false, hasError: false, forecast: []));
  });

  test("Get single data", () {
    when(repo.getWhetherData(
            lat: 10.609074377577327.toString(),
            long: 76.18231206162193.toString()))
        .thenAnswer((realInvocation) async {
      await Future.delayed(Duration(seconds: 3));

      return Right(weatherData);
    });
  });
}
