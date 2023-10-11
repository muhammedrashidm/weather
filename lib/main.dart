import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:whether/app/bloc/place_search_bloc.dart';
import 'package:whether/app/weather-bloc/weather_bloc.dart';
import 'package:whether/app/di.dart';
import 'package:whether/data/search/repo.dart';
import 'package:whether/data/whether/hive_adapters/day_data.dart';
import 'package:whether/data/whether/repo.dart';
import 'package:whether/presentation/splash/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  await setUpDep();
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(DayWeatherDataHiveAdapter());
  }
  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(SingleWeatherDataHiveAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => WeatherBloc(whetherRepo: getIt<WeatherRepo>())),  BlocProvider(
            create: (context) => PlaceSearchBloc( getIt<SearchRepo>())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.merriweather(fontSize: 100).fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreenSplash(),
      ),
    );
  }
}
