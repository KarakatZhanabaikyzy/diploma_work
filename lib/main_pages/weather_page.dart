import 'package:diploma_work/main_pages/recommendation_page.dart';
import 'package:flutter/material.dart';
import 'package:diploma_work/main_pages/style_page.dart';

class WeatherPage extends StatelessWidget {
  final double topContainerHeight;
  final double topContainerWidth;
  final double middleContainerHeight;
  final double middleContainerWidth;
  final double bottomContainerHeight;
  final double bottomContainerWidth;

  WeatherPage({
    Key? key,
    this.topContainerHeight = 160.0,
    this.topContainerWidth = double.infinity,
    this.middleContainerHeight = 420.0,
    this.middleContainerWidth = double.infinity,
    this.bottomContainerHeight = 60.0,
    this.bottomContainerWidth = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Установка фона всей страницы в белый цвет
      body: SingleChildScrollView(
        // Добавлено для поддержки прокрутки, если контент выходит за пределы экрана
        child: Column(
          children: [
            // Верхний контейнер
            Container(
              height: topContainerHeight,
              width: topContainerWidth,
              margin: const EdgeInsets.only(top: 0, bottom: 15, right: 0, left: 0),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [1.0, 1.0],
                  colors: [
                    Colors.yellow.shade100, // Более светлый оттенок желтого
                    Colors.yellow.shade800, // Более темный оттенок желтого
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(80),
                  bottomRight: const Radius.circular(80),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 28),
                  Text(
                    'Astana, Kazakhstan',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'Today, 11 feb',
                    style: TextStyle(fontSize: 35.0, color: Colors.black),
                  ),
                ],
              ),
            ),
            // Нижний контейнер
            Container(
              height: middleContainerHeight,
              width: middleContainerWidth,
              margin: const EdgeInsets.only(top: 25, bottom: 15, right: 10, left: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [1.0, 1.0],
                  colors: [
                    Colors.lightBlue.shade100,
                    Colors.lightBlue.shade800.withOpacity(0),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.4),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/weatherBig.png', width: 165.0),
                      const SizedBox(width: 40),
                      Text(
                        '-14°',
                        style: TextStyle(
                            fontSize: 75.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue.shade900),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.spaceBetween,
                    children: <Widget>[
                      WeatherParameter(
                        imagePath: 'assets/images/wind.png',
                        label: 'Wind-speed',
                        value: '3 km/h',
                      ),
                      WeatherParameter(
                        imagePath: 'assets/images/humidity.png',
                        label: 'Humidity',
                        value: '40%',
                      ),
                      WeatherParameter(
                        imagePath: 'assets/images/visibility.png',
                        label: 'Visability',
                        value: '29 km',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Кнопка "получить рекомендации"
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
              // Задает отступы: слева 10, сверху 20, справа 30, снизу 40
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StylePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue.shade900,
                  // Фоновый цвет кнопки
                  foregroundColor: Colors.white,
                  // Цвет текста кнопки
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Скругление углов
                  ),
                  padding: EdgeInsets
                      .zero, // Установка внутренних отступов в ноль для корректного отображения размеров
                ),
                child: const SizedBox(
                  width: 385, // Желаемая ширина кнопки
                  height: 60, // Желаемая высота кнопки
                  child: Center(
                    child: Text(
                      'Get Recommendation',
                      style: TextStyle(
                        fontSize: 23, // Желаемый размер шрифта текста кнопки
                        color: Colors.white, // Цвет текста
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: bottomContainerHeight,
              width: bottomContainerWidth,
              margin: const EdgeInsets.fromLTRB(10, 25, 10, 0),
              // Настраиваемые отступы для контейнера
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade900,
                borderRadius: const BorderRadius.all(
                    Radius.circular(15)), // Настраиваемый радиус скругления
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon:
                        Image.asset('assets/images/weather_iconInThatPage.png'),
                    iconSize: 28,
                    onPressed: () {
                      // Действие при нажатии на первую кнопку
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/shirt_icon.png'),
                    iconSize: 28,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RecommendationPage()), // Замените AnotherPage на реальный класс страницы
                      ); // Действие при нажатии на первую кнопку
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/profile_icon.png'),
                    iconSize: 28,
                    onPressed: () {
                      // Действие при нажатии на третью кнопку
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherParameter extends StatelessWidget {
  final String imagePath;
  final String label;
  final String value;

  const WeatherParameter({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(imagePath, width: 40),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 16.0, color: Colors.lightBlue.shade900),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue.shade900),
          ),
        ],
      ),
    );
  }
}
