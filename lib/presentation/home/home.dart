import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
import 'package:whether/app/bloc/place_search_bloc.dart';
import 'package:whether/app/weather-bloc/weather_bloc.dart';
import 'package:whether/presentation/const/assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whether/presentation/const/bg_gradiants.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          final bg = state.whetherModal?.main.toLowerCase();
          bool isDark = bg == "clouds";
          return Stack(
            children: [
              if (!state.isLoading)
                isDark
                    ? Lottie.asset(MyAssets.cloundy,
                        fit: BoxFit.cover, width: double.maxFinite)
                    : Lottie.asset(MyAssets.sunny,
                        fit: BoxFit.cover,
                        width: double.maxFinite,
                        height: double.maxFinite),
              Theme(
                data: Theme.of(context).copyWith(
                    textTheme: Theme.of(context).textTheme.apply(
                          bodyColor: isDark ? Colors.white : Colors.black,
                          displayColor: isDark ? Colors.white : Colors.black,
                        )),
                child: SizedBox(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        'https://openweathermap.org/img/wn/${state.whetherModal!.icon}@2x.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) =>
                                            Icon(Icons.photo),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            state.whetherModal!.temp,
                                            style: GoogleFonts.merriweather(
                                                color: isDark
                                                    ? Colors.white
                                                    : Colors.black,
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
                                                  "Humidity: ${state.whetherModal!.humidity}%"),
                                              Text(state.whetherModal!.desc)
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "${state.whetherModal!.city},${state.whetherModal!.country}",
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Row(
                                          children: [
                                            Text(DateFormat('hh:mm a').format(
                                                state.whetherModal!.dateTime)),
                                          ],
                                        ),
                                      )
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
                                    children: List.generate(
                                        state.forecast.length, (index) {
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
                                                  child: SizedBox(
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
                                                              .withOpacity(0.5),
                                                          Color((0xFFFFFFFF))
                                                              .withOpacity(0.5),
                                                        ],
                                                      ),
                                                      width: 100,
                                                      height: 200,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              DateFormat(
                                                                      'hh:mm a')
                                                                  .format(moment
                                                                      .dateTime),
                                                              style: TextStyle(
                                                                  fontSize: 8),
                                                            ),
                                                            Text(
                                                              DateFormat(
                                                                      'dd-MM-yy')
                                                                  .format(moment
                                                                      .dateTime),
                                                              style: TextStyle(
                                                                  fontSize: 8),
                                                            ),
                                                            Text(moment.temp,
                                                                style: GoogleFonts
                                                                    .merriweather(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            62)),
                                                            const Text(
                                                              "Humidity",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            ),
                                                            Text(
                                                              "${moment.humidity}%",
                                                              style: TextStyle(
                                                                  fontSize: 14),
                                                            ),
                                                            Text(
                                                              "${moment.desc}",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            Image.network(
                                                              'https://openweathermap.org/img/wn/${moment.icon}@2x.png',
                                                              width: 60,
                                                              errorBuilder: (_,
                                                                      __,
                                                                      ___) =>
                                                                  Icon(Icons
                                                                      .photo),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
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
              ),
              if (state.isLoading) Center(child: CupertinoActivityIndicator()),
              if (!state.isLoading && state.hasError && state.forecast.isEmpty)
                Container(
                    color: Color.fromRGBO(39, 49, 60, 1),
                    child: Center(
                      child: Lottie.asset(MyAssets.clound_error,
                          width: 300, height: 400),
                    )),
              Positioned(
                  left: 10,
                  right: 10,
                  child: SafeArea(
                    bottom: false,
                    child: SearchView(),
                  ))
            ],
          );
        },
      ),
    );
  }
}

class SearchView extends StatefulWidget {
  const SearchView({
    super.key,
  });

  @override
  State<SearchView> createState() => _SearchViewState();
}

late SearchController searchController;

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        searchController = controller;
        controller.addListener(() {
          BlocProvider.of<PlaceSearchBloc>(context)
              .add(PlaceSearchEvent.search(controller.text.trim()));
        });
        return SearchBar(
          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          onTap: () {
            controller.openView();
          },
          onChanged: (v) {
            controller.openView();
          },
          leading: const Icon(Icons.search),
          trailing: <Widget>[
            Tooltip(
              message: 'Change brightness mode',
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.wb_sunny_outlined),
                selectedIcon: const Icon(Icons.brightness_2_outlined),
              ),
            )
          ],
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List.generate(
            BlocProvider.of<PlaceSearchBloc>(context).state.result.length,
            (int index) {
          final item =
              BlocProvider.of<PlaceSearchBloc>(context).state.result[index];
          return GestureDetector(
            child: Text(item.name),
            onTap: () {
              BlocProvider.of<WeatherBloc>(context).add(
                  WeatherEvent.fetchWithCords(lat: item.lat, long: item.lon));
              controller.closeView(item.name);
            },
          );
        });
      },
      viewBuilder: (ls) {
        return BlocBuilder<PlaceSearchBloc, PlaceSearchState>(
            builder: (context, state) {
          if (state.isLoading)
            return Center(
              child: CupertinoActivityIndicator(),
            );
          return ListView.builder(
              itemCount: state.result.length,
              itemBuilder: (c, i) {
                final item = state.result[i];
                return GestureDetector(
                  child: ListTile(title: Text(item.name)),
                  onTap: () {
                    print(item.name);
                    BlocProvider.of<WeatherBloc>(context).add(
                        WeatherEvent.fetchWithCords(
                            lat: item.lat, long: item.lon));
                    searchController.closeView(item.name);
                    FocusScope.of(context).unfocus();
                  },
                );
              });
        });
      },
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
