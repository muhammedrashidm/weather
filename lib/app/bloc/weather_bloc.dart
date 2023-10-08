import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whether/domain/whether/i_rpeo.dart';
import 'package:whether/domain/whether/modals.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWhetherRepo whetherRepo;
  WeatherBloc({required this.whetherRepo})
      : super(const _Initial(isLoading: false, hasError: false,forecast: [])) {
    on<_WeatherEventFetchWithCord>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final resp = await whetherRepo.getWhetherData(
          lat: event.lat.toString(), long: event.long.toString());
      return resp.fold((l) {
        return emit(state.copyWith(
            isLoading: false, errorMessage: l.message, hasError: true));
      },
          (r) => emit(state.copyWith(
              whetherModal: r, isLoading: false, hasError: false)));
    });
    on<_WeatherEventGetForecastData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final resp = await whetherRepo.getWeatherForecast(
          lat: event.lat.toString(), long: event.long.toString());
      resp.fold((l) {
        return emit(state.copyWith(
            isLoading: false, errorMessage: l.message, hasError: true));
      }, (r) {
        List<ForecastListElement> response = r.list;
        response.sort((a, b) => a.dtTxt.compareTo(b.dtTxt));
        List<DayWeatherData> weatherForecast = [];

      
        DateTime currentDate = response.first.dtTxt;
        List<ForecastListElement> currentEvents = [];

        for (ForecastListElement event in response) {
          if (event.dtTxt.day ==currentDate.day && event.dtTxt.month ==currentDate.month) {
            currentEvents.add(event);
          } else {
            weatherForecast.add(DayWeatherData(list: currentEvents, dateTime: currentDate));
            currentDate = event.dtTxt;
            currentEvents = [event];
          }
        }

        // Add the last day
        weatherForecast.add(DayWeatherData(list: currentEvents, dateTime: currentDate));


        for (var element in weatherForecast) {
          print(element.dateTime);
          print(element.list);
        }
        emit(state.copyWith(isLoading: false,forecast: [...weatherForecast]),);
      });
    });
  }
}

class DayWeatherData {
  final List<ForecastListElement> list;
  final DateTime dateTime;

  DayWeatherData({required this.list, required this.dateTime});
}
