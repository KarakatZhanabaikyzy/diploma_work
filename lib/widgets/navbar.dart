import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key, required this.navigationShell});

  /// Контейнер для навигационного бара.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        /// Лист элементов для нижнего навигационного бара.
        items: _buildBottomNavBarItems,
        /// Текущий индекс нижнего навигационного бара.
        currentIndex: navigationShell.currentIndex,
        /// Обработчик нажатия на элемент нижнего навигационного бара.
        onTap: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
      ),
    );
  }

  // Возвращает лист элементов для нижнего навигационного бара.
  List<BottomNavigationBarItem> get _buildBottomNavBarItems => [
    const BottomNavigationBarItem(
      icon: Icon(Icons.cloud),
      label: 'weather',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'recommendation',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'profile',
    ),

  ];
}