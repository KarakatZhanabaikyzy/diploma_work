import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';



class WeatherPage extends StatelessWidget {
  final double topContainerHeight;
  final double topContainerWidth;
  final double middleContainerHeight;
  final double middleContainerWidth;
  final double bottomContainerHeight;
  final double bottomContainerWidth;

  WeatherPage({
    Key? key,
    this.topContainerHeight = 120.0,
    this.topContainerWidth = double.infinity,
    this.middleContainerHeight = 240.0,
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
              margin: const EdgeInsets.only(top: 0, bottom: 8, right: 0, left: 0),
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
                  const SizedBox(height: 20),
                  Text(
                    'Astana, Kazakhstan',
                    style: TextStyle(
                        fontSize: 20.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  //const SizedBox(height: 1),
                  const Text(
                    'Today, 11 feb',
                    style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),



            // Средний контейнер
            Container(
              height: middleContainerHeight,
              width: middleContainerWidth,
              margin: const EdgeInsets.only(top: 10, bottom: 5, right: 15, left: 15),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0, left: 20), // Добавляет отступ сверху
                        child: Image.asset('assets/images/weatherBig.png', width: 100.0),
                      ),
                      const SizedBox(width: 50),
                      Text(
                        'Sunny',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue.shade900),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),
                  const Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.spaceBetween,
                    children: <Widget>[
                      WeatherParameter(
                        imagePath: 'assets/images/temperature.png',
                        label: 'Temperature',
                        value: '15°',
                      ),
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
                    ],
                  ),
                ],
              ),
            ),

            // Добавление нового контейнера с каруселью изображений и текстом здесь
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10), // Добавляем небольшой отступ между текстом и каруселью
                    child: Text(
                      "Liked outfits for today",
                      style: TextStyle(
                        fontSize: 24.0, // Размер шрифта
                        fontWeight: FontWeight.bold, // Жирность шрифта
                        color: Colors.black, // Цвет текста
                      ),
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      aspectRatio: 16/9,
                      enlargeCenterPage: true,
                    ),
                    items: [1,2,3,4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                            ),
                            child: Image.asset('assets/images/photoLook$i.png', fit: BoxFit.cover), // Убедитесь, что у вас есть эти изображения в папке assets
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),



            // Кнопка "получить рекомендации"
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              // Задает отступы: слева 10, сверху 20, справа 30, снизу 40
              child: ElevatedButton(
                onPressed: () {
                  context.go('/style');
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
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(imagePath, width: 30),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 16.0, color: Colors.lightBlue.shade900),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue.shade900),
          ),
        ],
      ),
    );
  }
}
