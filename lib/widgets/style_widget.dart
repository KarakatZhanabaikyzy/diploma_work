import 'package:diploma_work/widgets/weather_widget.dart';
import 'package:flutter/material.dart';
import 'package:diploma_work/widgets/recommendation_widget.dart';

class StylePage extends StatelessWidget {
  final double topContainerHeight;
  final double topContainerWidth;

  StylePage({
    Key? key,
    this.topContainerHeight = 200.0,
    this.topContainerWidth = double.infinity,
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
                      'assets/images/stylePageTopContainer.png',
                      width: 170,
                      height: 170,
                      fit: BoxFit.contain, // Изображение помещается целиком, сохраняя пропорции
                    ),
                  ),
                  SizedBox(width: 5), // Отступ между изображением и текстом
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 0, right: 5, left: 5),  // Отступы для текста
                      child: Text(
                        'Lets choose your style of clothing in the future it will help us',
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
                'Choose your style',
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),

            // Отступы вокруг GridView
            Padding(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 20,
                right: 10,
                left: 10,
              ),

              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  String imagePath = 'assets/images/style_$index.png';
                  return GestureDetector(
                    onTap: () {
                      // Действие при тапе на элемент сетки
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),




            // buttons "back" AND "again"
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 60),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WeatherWidget()), // Замените AnotherPage на реальный класс страницы
                        );// Действие при нажатии на первую кнопку
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
                          'Back',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15), // Пространство между кнопками
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Действие при нажатии на вторую кнопку, например переход на другую страницу
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RecommendationPage()), // Замените AnotherPage на реальный класс страницы
                        );
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
                          'Save',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
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

class StyleParameter extends StatelessWidget {
  final String imagePath;
  final String label;
  final String value;

  const StyleParameter({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(imagePath, width: 40),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 16.0, color: Colors.lightBlue.shade900)),
          SizedBox(height: 4),
          Text(value, style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold, color: Colors.lightBlue.shade900)),
        ],
      ),
    );
  }
}
