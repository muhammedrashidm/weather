import 'package:flutter/material.dart';
import 'package:whether/app/bloc/weather_bloc.dart';
import 'package:whether/app/di.dart';
import 'package:whether/data/whether/repo.dart';
import 'package:whether/presentation/splash/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
void main() async {
  await setUpDep();
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
            create: (context) => WeatherBloc(whetherRepo: getIt<WeatherRepo>()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.merriweather(
              fontSize: 100
          ).fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreenSplash(),
      ),
    );
  }
}
