import 'package:diploma_work/main_pages/weather_page.dart';
import 'package:diploma_work/widgets/navbar.dart';
import 'package:go_router/go_router.dart';
import '../authorization_pages/Registr.dart';
import '../authorization_pages/login.dart';
import '../authorization_pages/welcome.dart';
import '../main_pages/profile.dart';
import '../main_pages/recommendation_page.dart';
import '../main_pages/style_page.dart';

final router = GoRouter(
  initialLocation: '/welcome',
  routes: [

    GoRoute(path: '/style', builder: (context, state) =>  StylePage(),),
    GoRoute(path: '/login', builder: (context, state) =>  LoginPage(),),
    GoRoute(path: '/registr', builder: (context, state) =>  RegistrationPage(),),
    GoRoute(path: '/welcome', builder: (context, state) =>  WelcomeScreen(),),

    // BottomNavigationBar
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          Navbar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/weather', builder: (context, state) =>  WeatherPage(),),
          ],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/recommendation', builder: (context, state) =>  RecommendationPage(),),
          ],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/profile', builder: (context, state) =>  ProfilePage(),),
          ],
        ),
      ],
    ),
  ],
);