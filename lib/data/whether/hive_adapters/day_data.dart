import 'package:hive_flutter/hive_flutter.dart';
part 'day_data.g.dart';

@HiveType(typeId: 0)
class DayWeatherDataHive {
  @HiveField(0)
  final List<SingleWeatherDataHive> list;
  @HiveField(1)
  final DateTime dateTime;

  DayWeatherDataHive({required this.list, required this.dateTime});
}

@HiveType(typeId: 1)
class SingleWeatherDataHive {
  @HiveField(0)
  final String desc;
  @HiveField(1)
  final String temp;
  @HiveField(2)
  final String humidity;
  @HiveField(3)
  final DateTime dateTime;
  @HiveField(4)
  final String icon;
  @HiveField(5)
  final String city;
  @HiveField(6)
  final String country;
  @HiveField(7)
  final String main;
  SingleWeatherDataHive(
      {required this.desc,
      required this.temp,
      required this.humidity,
      required this.dateTime,
      required this.icon,
      required this.city,
      required this.main,
      required this.country});
}
