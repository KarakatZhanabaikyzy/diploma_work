import 'package:flutter/material.dart';
import 'package:diploma_work/main_pages/weather_page.dart';
import 'Registr.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi, Welcome back',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
                fillColor: Colors.blue.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.blue.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Добавьте логику для восстановления пароля
              },
              child: Text('Forgot password?'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/weather');
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFCC70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                context.go('/registr');
              },
              child: Text("Don't have an account? Sign up"),
            ),
            Divider(),
            TextButton.icon(
              onPressed: () {
                // Добавьте логику для входа через Google
              },
              icon: Image.asset('assets/images/google_icon.png', width: 24), // Укажите путь к вашему изображению Google
              label: Text('Sign up with Google'),
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
