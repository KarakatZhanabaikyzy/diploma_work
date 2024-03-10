import 'package:diploma_work/ui/welcome.dart';
import 'package:flutter/material.dart';
import 'main_pages/weather_page.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
<<<<<<< HEAD
        child: WeatherPage(),
=======
        child: WelcomeScreen(),
>>>>>>> 25dafc75a6f55317806fdc4ef21765ba7233b432
      ),
    );
  }
}
