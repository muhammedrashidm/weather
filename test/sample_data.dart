import 'package:whether/app/weather-bloc/weather_bloc.dart';
import 'package:whether/domain/whether/modals.dart';

CoordModal coord = CoordModal(lon: -73.935242, lat: 40.730610);

List<WeatherModal> weather = [
  WeatherModal(id: 800, main: "Clear", description: "clear sky", icon: "01d"),
];

String base = "stations";

MainModal data = MainModal(
  temp: 23.75,
  feelsLike: 24.50,
  tempMin: 22.80,
  tempMax: 25.30,
  pressure: 1021,
  humidity: 52,
  seaLevel: 1021,
  grndLevel: 1020,
);

int visibility = 10000;

WindModal wind = WindModal(speed: 1.34, deg: 195, gust: 2.45);

CloudsModal clouds = CloudsModal(all: 0);

int dt = 1633964222;

SysModal sys = SysModal(
  type: 2,
  id: 2035776,
  country: "US",
  sunrise: 1633936761,
  sunset: 1633977167,
);

int timezone = -14400;

int id = 5128581;

String name = "New York";

int cod = 200;

SingleWhetherModal weatherData = SingleWhetherModal(
  coord: coord,
  weather: weather,
  base: base,
  main: data,
  visibility: visibility,
  wind: wind,
  clouds: clouds,
  dt: dt,
  sys: sys,
  timezone: timezone,
  id: id,
  name: name,
  cod: cod,
);

List<SingleWeatherData> weatherDataList = [
  SingleWeatherData(
    desc: "Cloudy",
    temp: "25°C",
    humidity: "75%",
    dateTime: DateTime.now(),
    icon: "cloudy.png",
    city: "New York",
    main: "Cloudy",
    country: "US",
  ),
  SingleWeatherData(
    desc: "Sunny",
    temp: "30°C",
    humidity: "60%",
    dateTime: DateTime.now(),
    icon: "sunny.png",
    city: "Los Angeles",
    main: "Clear",
    country: "US",
  ),
  SingleWeatherData(
    desc: "Rainy",
    temp: "15°C",
    humidity: "90%",
    dateTime: DateTime.now(),
    icon: "rainy.png",
    city: "London",
    main: "Rain",
    country: "UK",
  ),
  // Add more data objects as needed...
];
