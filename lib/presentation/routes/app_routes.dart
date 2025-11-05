import 'package:first_choices/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';



class AppRoutes {
  // Route names
  static const String home = '/home';
  static const String login = '/login';

  // Initial route
  static const String initialRoute = home;

  // Route map
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case login:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
