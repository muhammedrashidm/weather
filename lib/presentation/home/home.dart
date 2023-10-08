import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
import 'package:whether/app/bloc/weather_bloc.dart';
import 'package:whether/presentation/const/assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whether/presentation/const/bg_gradiants.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        BlocProvider.of<WeatherBloc>(context).add(
            const WeatherEvent.getForecastData(
                lat: 11.256360866368981, long: 75.79498708539957));
      }),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          final bg = state.whetherModal!.weather.first.main.toLowerCase();
          return Stack(
            children: [
              bg == "clouds"
                  ? Lottie.asset(MyAssets.cloundy,
                      fit: BoxFit.cover, width: double.maxFinite)
                  : Lottie.asset(MyAssets.sunny,
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: double.maxFinite),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: state.whetherModal != null
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://openweathermap.org/img/wn/${state.whetherModal!.weather.first.icon}@2x.png',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          state.whetherModal?.main.temp
                                                  .toInt()
                                                  .toString() ??
                                              '',
                                          style: GoogleFonts.merriweather(
                                              fontSize: 124),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Humidity: ${state.whetherModal!.main.humidity}%"),
                                            Text(state.whetherModal!.weather
                                                .first.description)
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "${state.whetherModal!.name},${state.whetherModal!.sys.country}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: DefaultTabController(
                            length: state.forecast.length,
                            child: Column(
                              children: [
                                TabBar(
                                  tabs: state.forecast.map((e) {
                                    if (e.dateTime.isToday()) {
                                      return const Text("Today");
                                    }
                                    if (e.dateTime.isTomorrow()) {
                                      return const Text("Tomorrow");
                                    }
                                    return Text(DateFormat('dd-MM-yyyy')
                                        .format(e.dateTime));
                                  }).toList(),
                                  indicatorColor: Colors.transparent,
                                  labelColor: Colors.white,
                                ),
                                Expanded(
                                    child: TabBarView(
                                  children: List.generate(state.forecast.length,
                                      (index) {
                                    final day = state.forecast[index];
                                    return SizedBox(
                                        width: double.maxFinite,
                                        height: double.maxFinite,
                                        child: Center(
                                          child: ListView.builder(
                                            itemBuilder: (c, i) {
                                              final moment = day.list[i];
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      child:
                                                          GlassmorphicContainer(
                                                        borderRadius: 20,
                                                        blur: 20,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        border: 2,
                                                        linearGradient:
                                                            LinearGradient(
                                                                begin: Alignment
                                                                    .topLeft,
                                                                end: Alignment
                                                                    .bottomRight,
                                                                colors: [
                                                              Color(0xFFffffff)
                                                                  .withOpacity(
                                                                      0.1),
                                                              Color(0xFFFFFFFF)
                                                                  .withOpacity(
                                                                      0.05),
                                                            ],
                                                                stops: const [
                                                              0.1,
                                                              1,
                                                            ]),
                                                        borderGradient:
                                                            LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .bottomRight,
                                                          colors: [
                                                            Color(0xFFffffff)
                                                                .withOpacity(
                                                                    0.5),
                                                            Color((0xFFFFFFFF))
                                                                .withOpacity(
                                                                    0.5),
                                                          ],
                                                        ),
                                                        width: 100,
                                                        height: 160,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                  moment
                                                                      .main.temp
                                                                      .toInt()
                                                                      .toString(),
                                                                  style: GoogleFonts
                                                                      .merriweather(
                                                                    color: Colors.white,
                                                                          fontSize:
                                                                              62)),
                                                              const Text(
                                                                "Humidity",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                    fontSize:
                                                                        10),
                                                              ),
                                                              Text(
                                                                "${moment.main.humidity}%",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                              Text(
                                                                "${moment.weather.first.description}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(DateFormat('hh:mm a')
                                                        .format(moment.dtTxt)),
                                                    Text(DateFormat('dd-MM-yy')
                                                        .format(moment.dtTxt)),
                                                  ],
                                                ),
                                              );
                                            },
                                            itemCount: day.list.length,
                                            scrollDirection: Axis.horizontal,
                                          ),
                                        ));
                                  }),
                                ))
                              ],
                            ))),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

extension DateHelpers on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool isTomorrow() {
    final yesterday = DateTime.now().add(Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }
}
