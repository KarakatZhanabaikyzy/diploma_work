

import 'package:flutter/material.dart';
import 'Registr.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Weather Wardrobe",
              style: TextStyle(
                fontSize: 30,
                color: const Color(0xFFFFCC70),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(
              "images/welcome.png",
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),
            const Text(
              "Dress for the weather with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFFCC70),
                fontSize: 24, // Немного уменьшил размер, чтобы не перегружать визуально
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 40), // Отступ перед кнопками
            buildButton(context, "Login", const Color(0xFFFFCC70), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }),
            const SizedBox(height: 16),
            buildButton(context, "Create an account", const Color(0xFF7E7E7E), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationPage()),
              );
            }),
            const SizedBox(height: 40), // Отступ внизу
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String text, Color color, VoidCallback onTap) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity, // Растянем на всю доступную ширину
          height: 50,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
