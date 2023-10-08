import 'package:whether/data/whether/single_wether_response/clouds.dart';
import 'package:whether/data/whether/single_wether_response/coord.dart';
import 'package:whether/data/whether/single_wether_response/main.dart';
import 'package:whether/data/whether/single_wether_response/single_wether_response.dart';
import 'package:whether/data/whether/single_wether_response/sys.dart';
import 'package:whether/data/whether/single_wether_response/weather.dart';
import 'package:whether/data/whether/single_wether_response/wind.dart';
import 'package:whether/data/whether/weather_forecast_response/city.dart';
import 'package:whether/data/whether/weather_forecast_response/list.dart';
import 'package:whether/data/whether/weather_forecast_response/main.dart';
import 'package:whether/data/whether/weather_forecast_response/weather_forecast_response.dart';
import 'package:whether/domain/whether/modals.dart';

extension SingleWetherResponseToDomain on SingleWetherResponse? {
  SingleWhetherModal toDomain() {
    return SingleWhetherModal(
        coord: this?.coord.toDomain() ?? CoordModal.empty(),
        weather: this?.weather?.map((e) => e.toDomain()).toList() ?? [],
        base: this?.base ?? '',
        main: this?.main.toDomain() ?? MainModal.empty(),
        visibility: this?.visibility ?? 0,
        wind: this?.wind.toDomain() ?? WindModal(speed: 0, deg: 0, gust: 0),
        clouds: this?.clouds.toDomain() ?? CloudsModal(all: 0),
        dt: this?.dt ?? 0,
        sys: this?.sys.toDomain() ?? SysModal.empty(),
        timezone: this?.timezone ?? 0,
        id: this?.id ?? 0,
        name: this?.name ?? '',
        cod: this?.cod ?? 0);
  }
}

extension CloudsToModal on CloudsResponse? {
  CloudsModal toDomain() => CloudsModal(all: this?.all ?? 0);
}

extension SysToDomain on SysResponse? {
  SysModal toDomain() => SysModal(
      type: this?.type ?? 0,
      id: this?.id ?? 0,
      country: this?.country ?? '',
      sunrise: this?.sunrise ?? 0,
      sunset: this?.sunset ?? 0);
}

extension WindToModal on WindResponse? {
  WindModal toDomain() => WindModal(
      speed: this?.speed ?? 0, deg: this?.deg ?? 0, gust: this?.gust ?? 0);
}

extension MainToModal on MainResponse? {
  MainModal toDomain() {
    return MainModal(
        temp: this?.temp ?? 0,
        feelsLike: this?.feelsLike ?? 0,
        tempMin: this?.tempMin ?? 0,
        tempMax: this?.tempMax ?? 0,
        pressure: this?.pressure ?? 0,
        humidity: this?.humidity ?? 0,
        seaLevel: this?.seaLevel ?? 0,
        grndLevel: this?.grndLevel ?? 0);
  }
}

extension WeetherToDomain on WeatherResponse? {
  WeatherModal toDomain() {
    return WeatherModal(
        id: this?.id ?? 0,
        main: this?.main ?? '',
        description: this?.description ?? '',
        icon: this?.icon ?? '');
  }
}

extension CoordsResponseToDomain on CoordResponse? {
  CoordModal toDomain() {
    return CoordModal(lon: this?.lon ?? 0, lat: this?.lat ?? 0);
  }
}

///Forecast

extension WeatherFOrecastToModal on WeatherForecastResponse? {
  WetherForecastModal toDomain() {
    return WetherForecastModal(
        cod: this?.cod ?? '',
        message: this?.message ?? 0,
        cnt: this?.cnt ?? 0,
        list: this?.list?.map((e) => e.toDomain()).toList() ?? [],
        city: this?.city.toDomain() ?? CityModal(id: 0, name: '', coord: CoordModal.empty(), country: '', population: 0, timezone: 0, sunrise: 0, sunset: 0));
  }
}

extension CityToModal on CityResponse? {
  CityModal toDomain() => CityModal(
      id: this?.id ??0,
      name: this?.name ??'',
      coord:this?. coord.toDomain() ??CoordModal.empty(),
      country:this?. country ?? '',
      population:this?. population?? 0,
      timezone: this?.timezone?? 0,
      sunrise: this?.sunrise?? 0,
      sunset: this?.sunset?? 0);
}

extension WeatherForecastItemResponseToModal on WeatherForecastItemResponse? {
  ForecastListElement toDomain() {
    return ForecastListElement(
        dt: this?.dt ?? 0,
        main: this?.main.toDomain() ??
            ForecastMain(
                temp: 0,
                feelsLike: 0,
                tempMin: 0,
                tempMax: 0,
                pressure: 0,
                seaLevel: 0,
                grndLevel: 0,
                humidity: 0,
                tempKf: 0),
        weather: this?.weather?.map((e) => e.toDomain()).toList() ?? [],
        clouds: this?.clouds.toDomain() ?? CloudsModal(all: 0),
        wind: this?.wind.toDomain() ?? WindModal(speed: 0, deg: 0, gust: 0),
        visibility: this?.visibility ?? 0,
        pop: this?.pop ?? 0,
        rain: RainModal(the3H: this?.rain?.h ?? 0),
        sys: SysForecast(pod: this?.sys?.pod ?? ''),
        dtTxt: this?.dtTxt == null
            ? DateTime.now()
            : DateTime.tryParse(this!.dtTxt!) ?? DateTime.now());
  }
}

extension ForecastMainToModal on ForecastMainResponse? {
  ForecastMain toDomain() => ForecastMain(
      temp: this?.temp ?? 0,
      feelsLike: this?.feelsLike ?? 0,
      tempMin: this?.tempMin ?? 0,
      tempMax: this?.tempMax ?? 0,
      pressure: this?.pressure ?? 0,
      humidity: this?.humidity ?? 0,
      seaLevel: this?.seaLevel ?? 0,
      grndLevel: this?.grndLevel ?? 0,
      tempKf: this?.tempKf ?? 0);
}
