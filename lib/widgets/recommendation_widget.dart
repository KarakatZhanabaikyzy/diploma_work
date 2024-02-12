// В файле style_widget.dart
import 'package:flutter/material.dart';
import 'package:diploma_work/widgets/weather_widget.dart';
import 'package:diploma_work/widgets/style_widget.dart';

class RecommendationPage extends StatelessWidget {

  final double topContainerHeight;
  final double topContainerWidth;
  final double imageBoxHeight; // Высота контейнера для изображения
  final double imageBoxWidth;
  final double bottomContainerHeight;
  final double bottomContainerWidth;

  RecommendationPage({
    Key? key,
    this.topContainerHeight = 200.0,
    this.topContainerWidth = double.infinity,
    this.imageBoxHeight = 400.0, // Задайте подходящие значения
    this.imageBoxWidth = double.infinity,
    this.bottomContainerHeight = 60.0,
    this.bottomContainerWidth = double.infinity,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Установка фона всей страницы в белый цвет
      body: SingleChildScrollView( // Добавлено для поддержки прокрутки, если контент выходит за пределы экрана
        child: Column(
          children: [
            // Верхний контейнер
            Container(
              height: topContainerHeight,
              width: topContainerWidth,
              margin: EdgeInsets.only(top: 0, bottom: 15, right: 0, left: 0),
              padding: EdgeInsets.all(20),
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание дочерних элементов по верхнему краю
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0), // Отступы для картинки
                    child: Image.asset(
                      'assets/images/recomPageTopContainer.png',
                      width: 190,
                      height: 190,
                      fit: BoxFit.contain, // Изображение помещается целиком, сохраняя пропорции
                    ),
                  ),
                  SizedBox(width: 0), // Отступ между изображением и текстом
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 0, right: 5, left: 5),  // Отступы для текста
                      child: Text(
                        'Bad weather not excuse to not wear your best look!',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: Text(
                'My recommendation',
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),

            //fixed box for AI images
            Container(
              height: imageBoxHeight,
              width: imageBoxWidth,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20), // Отступы вокруг бокса
              decoration: BoxDecoration(
                color: Colors.white, // Фон контейнера, можно установить другой, если нужно
                borderRadius: BorderRadius.circular(20), // Скругление углов
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/images/ai_generated_image.png'), // Путь к AI-генерированному изображению
                  fit: BoxFit.cover, // Изображение будет заполнять весь контейнер
                ),
              ),
            ),



            //buttons "again" and "i like it"
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        // Увеличиваем высоту кнопки
                        child: Text(
                          'Again',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15), // Пространство между кнопками
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue.shade900, // Можно выбрать другой цвет для отличия
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10), // Увеличиваем высоту кнопки
                        child: Text(
                          'I like it',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: bottomContainerHeight,
              width: bottomContainerWidth,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0), // Настраиваемые отступы для контейнера
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade900,
                borderRadius: BorderRadius.all(Radius.circular(15)), // Настраиваемый радиус скругления
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('assets/images/weather_icon.png'),
                    iconSize: 28,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WeatherWidget()), // Замените AnotherPage на реальный класс страницы
                      );// Действие при нажатии на первую кнопку
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/shirt_iconInThatPage.png'),
                    iconSize: 28,
                    onPressed: () {
                      // Действие при нажатии на вторую кнопку
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
