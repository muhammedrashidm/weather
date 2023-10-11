import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whether/domain/whether/i_rpeo.dart';
import 'package:whether/domain/whether/modals.dart';
import 'package:whether/presentation/home/home.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWhetherRepo whetherRepo;
  WeatherBloc({required this.whetherRepo})
      : super(const _Initial(isLoading: false, hasError: false, forecast: [])) {
    on<_WeatherEventFetchWithCord>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final resp = await whetherRepo.getWhetherData(
          lat: event.lat.toString(), long: event.long.toString());
      return resp.fold((l) {
        return emit(state.copyWith(
            isLoading: false, errorMessage: l.message, hasError: true));
      },
          (r) => emit(state.copyWith(
              whetherModal: SingleWeatherData(
                  desc: r.weather.first.description,
                  temp: r.main.temp.toInt().toString(),
                  humidity: r.main.humidity.toInt().toString(),
                  dateTime: DateTime.now(),
                  icon: r.weather.first.icon,
                  city: r.name,
                  country: r.sys.country,
                  main: r.weather.first.main),
              isLoading: false,
              hasError: false)));
    });
    on<_WeatherEventGetForecastData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final resp = await whetherRepo.getWeatherForecast(
          lat: event.lat.toString(), long: event.long.toString());
      resp.fold((l) {
        add(const WeatherEvent.getCachedData());
        return emit(state.copyWith(
            isLoading: false, errorMessage: l.message, hasError: true));
      }, (r) {
        List<ForecastListElement> response = r.list;
        response.sort((a, b) => a.dtTxt.compareTo(b.dtTxt));
        List<DayWeatherData> weatherForecast = [];

        DateTime currentDate = response.first.dtTxt;
        List<SingleWeatherData> currentEvents = [];

        for (ForecastListElement event in response) {
          if (event.dtTxt.day == currentDate.day &&
              event.dtTxt.month == currentDate.month) {
            currentEvents.add(event.toStateModal(r.city));
          } else {
            weatherForecast.add(
                DayWeatherData(list: currentEvents, dateTime: currentDate));
            currentDate = event.dtTxt;
            currentEvents = [event.toStateModal(r.city)];
          }
        }

        // Add the last day
        weatherForecast
            .add(DayWeatherData(list: currentEvents, dateTime: currentDate));

        whetherRepo
            .saveForecastToHive(weatherData: weatherForecast)
            .then((value) {
          print(value);
        });
        emit(
          state.copyWith(isLoading: false, forecast: [...weatherForecast]),
        );
      });
    });
    on<_WeatherEventGetCachedData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await whetherRepo.readFromHive();
      res.fold((l) {
        emit(state.copyWith(isLoading: false, errorMessage: l.message));
      }, (r) {
        SingleWeatherData? data;
        DateTime now = DateTime.now();
        final DateTime currDay = DateTime(now.year, now.month, now.day);

        for (DayWeatherData obj in r) {
          if (obj.dateTime.day == currDay.day &&
              obj.dateTime.month == currDay.month) {
            final DateTime currTime =
                DateTime(now.year, now.month, now.day, now.hour);
            for (var element in obj.list) {
              if (isAround3HoursAhead(currTime, element.dateTime)) {
                data = SingleWeatherData(
                    desc: element.desc,
                    temp: element.temp,
                    humidity: element.humidity,
                    dateTime: element.dateTime,
                    icon: element.icon,
                    city: element.city,
                    main: element.main,
                    country: element.country);
                break;
              }
            }
            break;
          }
        }
        final newMap = r
            .where((e) =>
                e.dateTime.isToday() || e.dateTime.isAfter(DateTime.now()))
            .toList();
        emit(state.copyWith(
            isLoading: false, forecast: newMap, whetherModal: data));
      });
    });
  }
}

bool isAround3HoursAhead(DateTime referenceTime, DateTime otherTime) {
  Duration threeHours = const Duration(minutes: 95);

  DateTime threeHoursAhead = referenceTime.add(threeHours);

  DateTime threeHoursBehind = referenceTime.subtract(threeHours);

  return otherTime.isAfter(threeHoursBehind) ||
      otherTime.isBefore(threeHoursAhead);
}

extension ForecastListElementToSingleWeatherDataStat on ForecastListElement {
  SingleWeatherData toStateModal(CityModal cityModal) {
    return SingleWeatherData(
        desc: weather.first.description,
        temp: main.temp.toInt().toString(),
        humidity: main.humidity.toInt().toString(),
        dateTime: dtTxt,
        icon: weather.first.icon,
        city: cityModal.name,
        country: cityModal.country,
        main: weather.first.main);
  }
}

class DayWeatherData {
  final List<SingleWeatherData> list;
  final DateTime dateTime;

  DayWeatherData({required this.list, required this.dateTime});
}

class SingleWeatherData {
  final String desc;
  final String temp;
  final String humidity;
  final DateTime dateTime;
  final String icon;
  final String city;
  final String country;
  final String main;
  SingleWeatherData(
      {required this.desc,
      required this.temp,
      required this.humidity,
      required this.dateTime,
      required this.icon,
      required this.city,
      required this.main,
      required this.country});
}
