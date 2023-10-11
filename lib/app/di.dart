import 'package:get_it/get_it.dart';
import 'package:whether/data/core/dio.dart';
import 'package:whether/data/search/repo.dart';
import 'package:whether/data/whether/repo.dart';

final getIt = GetIt.instance;

Future<void> setUpDep() async {
  getIt.registerLazySingleton(() => DioManager());
  getIt.registerLazySingleton(() => WeatherRepo(dio: getIt<DioManager>()));
  getIt.registerLazySingleton(() => SearchRepo(dio: getIt<DioManager>()));
}
