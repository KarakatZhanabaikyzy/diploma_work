import 'package:diploma_work/main_pages/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryItem {
  final String name;
  final String imagePath;

  CategoryItem(this.name, this.imagePath);
}

class Category {
  final String name;
  final List<CategoryItem> items;

  Category(this.name, this.items);
}


class StylePage extends StatelessWidget {
  final double topContainerHeight;
  final double topContainerWidth;

  final List<Category> categories = [
    Category(
        'Casual',
        [
          CategoryItem('Go to the cinema', 'assets/images/item1.png'),
          CategoryItem('Walk around', 'assets/images/item2.png'),
          CategoryItem('Shopping', 'assets/images/item3.png'),
        ]
    ),
    Category(
        'Business',
        [
          CategoryItem('Ячейка A', 'assets/images/itemA.png'),
          CategoryItem('Ячейка B', 'assets/images/itemB.png'),
          CategoryItem('Ячейка C', 'assets/images/itemC.png'),
        ]
    ),
    Category(
        'Elegant',
        [
          CategoryItem('Ячейка A', 'assets/images/itemA.png'),
          CategoryItem('Ячейка B', 'assets/images/itemB.png'),
          CategoryItem('Ячейка C', 'assets/images/itemC.png'),
        ]
    ),
    Category(
        'Sporty',
        [
          CategoryItem('Ячейка A', 'assets/images/itemA.png'),
          CategoryItem('Ячейка B', 'assets/images/itemB.png'),
          CategoryItem('Ячейка C', 'assets/images/itemC.png'),
        ]
    ),
    // Добавьте другие категории и элементы по аналогии
  ];


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




            // Внутри Padding перед кнопками "Назад" и "Далее"
            // Внутри Padding перед кнопками "Назад" и "Далее"
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      categories[index].name,
                      style: TextStyle(
                        fontSize: 20, // Устанавливаем размер текста заголовка
                        fontWeight: FontWeight.bold, // Делаем текст заголовка жирным
                      ),
                    ),
                    children: categories[index].items.map((item) {
                      return InkWell(
                        onTap: () {
                          // Действие при нажатии на элемент
                          print("${item.name} tapped!");
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(item.imagePath, width: 400, height: 400), // Указываем размер изображения
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0), // Добавляем небольшой отступ сверху для текста
                              child: Text(
                                item.name,
                                style: TextStyle(
                                  fontSize: 23, // Устанавливаем размер текста элемента
                                ),
                              ),
                            ), // Текст под изображением
                          ],
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),






            // buttons "back" AND "next"
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/weather');
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
                        context.go('/recommendation');
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
                          'Next',
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
