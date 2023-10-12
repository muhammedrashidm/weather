import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whether/app/bloc/place_search_bloc.dart';
import 'package:whether/app/weather-bloc/weather_bloc.dart';

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