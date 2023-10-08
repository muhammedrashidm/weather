import 'package:flutter/material.dart';

class BgGradiants {
  static const sunny = LinearGradient(
    colors: [Color(0xffce7c2e), Color(0xffeaa32a)],
    stops: [0.25, 0.75],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const cloudy = LinearGradient(
    colors: [Color(0xff416aad), Color(0xff54a1e8)],
    stops: [0.25, 0.75],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
