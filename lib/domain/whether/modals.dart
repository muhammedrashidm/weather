class SingleWhetherModal {
  CoordModal coord;
  List<WeatherModal> weather;
  String base;
  MainModal main;
  int visibility;
  WindModal wind;
  CloudsModal clouds;
  int dt;
  SysModal sys;
  int timezone;
  int id;
  String name;
  int cod;

  SingleWhetherModal({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
}

class CloudsModal {
  int all;

  CloudsModal({
    required this.all,
  });
}

class CoordModal {
  double lon;
  double lat;

  CoordModal({
    required this.lon,
    required this.lat,
  });
  factory CoordModal.empty() => CoordModal(lon: 0, lat: 0);
}

class MainModal {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;
  int seaLevel;
  int grndLevel;

  MainModal({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });
  factory MainModal.empty() => MainModal(
      temp: 0,
      feelsLike: 0,
      tempMin: 0,
      tempMax: 0,
      pressure: 0,
      humidity: 0,
      seaLevel: 0,
      grndLevel: 0);
}

class SysModal {
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;

  SysModal({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });
  factory SysModal.empty() =>
      SysModal(type: 0, id: 0, country: '', sunrise: 0, sunset: 0);
}

class WeatherModal {
  int id;
  String main;
  String description;
  String icon;

  WeatherModal({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
}

class WindModal {
  double speed;
  int deg;
  double gust;

  WindModal({
    required this.speed,
    required this.deg,
    required this.gust,
  });
}

///Forecast
///

class WetherForecastModal {
  String cod;
  int message;
  int cnt;
  List<ForecastListElement> list;
  CityModal city;

  WetherForecastModal({
    required this.cod,
    required this.message,
    required this.cnt,
    required this.list,
    required this.city,
  });
}

class CityModal {
  int id;
  String name;
  CoordModal coord;
  String country;
  int population;
  int timezone;
  int sunrise;
  int sunset;

  CityModal({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
  });
}

class ForecastListElement {
  int dt;
  ForecastMain main;
  List<WeatherModal> weather;
  CloudsModal clouds;
  WindModal wind;
  int visibility;
  double pop;
  RainModal rain;
  SysForecast sys;
  DateTime dtTxt;

  ForecastListElement({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.pop,
    required this.rain,
    required this.sys,
    required this.dtTxt,
  });
}

class RainModal {
  double the3H;

  RainModal({
    required this.the3H,
  });
}

class SysForecast {
  String pod;

  SysForecast({
    required this.pod,
  });
}

class ForecastMain {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int seaLevel;
  int grndLevel;
  int humidity;
  double tempKf;

  ForecastMain({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.seaLevel,
    required this.grndLevel,
    required this.humidity,
    required this.tempKf,
  });
}
