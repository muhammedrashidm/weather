// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayWeatherDataHiveAdapter extends TypeAdapter<DayWeatherDataHive> {
  @override
  final int typeId = 0;

  @override
  DayWeatherDataHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayWeatherDataHive(
      list: (fields[0] as List).cast<SingleWeatherDataHive>(),
      dateTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DayWeatherDataHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.list)
      ..writeByte(1)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayWeatherDataHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SingleWeatherDataHiveAdapter extends TypeAdapter<SingleWeatherDataHive> {
  @override
  final int typeId = 1;

  @override
  SingleWeatherDataHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SingleWeatherDataHive(
      desc: fields[0] as String,
      temp: fields[1] as String,
      humidity: fields[2] as String,
      dateTime: fields[3] as DateTime,
      icon: fields[4] as String,
      city: fields[5] as String,
      main: fields[7] as String,
      country: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SingleWeatherDataHive obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.desc)
      ..writeByte(1)
      ..write(obj.temp)
      ..writeByte(2)
      ..write(obj.humidity)
      ..writeByte(3)
      ..write(obj.dateTime)
      ..writeByte(4)
      ..write(obj.icon)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.country)
      ..writeByte(7)
      ..write(obj.main);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SingleWeatherDataHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
