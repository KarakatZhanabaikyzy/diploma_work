import 'package:diploma_work/routes/routing.dart';
import 'package:flutter/material.dart';


void main() {

  runApp(const WeatherWardrobe());
}

class WeatherWardrobe extends StatelessWidget {
  const WeatherWardrobe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}