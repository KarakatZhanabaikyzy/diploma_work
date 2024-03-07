import 'package:diploma_work/ui/welcome.dart';
import 'package:flutter/material.dart';
import 'widgets/weather_widget.dart';
import 'widgets/style_widget.dart';

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
        child: WelcomeScreen(),
      ),
    );
  }
}
