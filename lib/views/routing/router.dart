import 'package:flutter_redux_architecture/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_architecture/views/index.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case app:
        return MaterialPageRoute(builder: (_) => ReduxApp());
        break;
      case home_screen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
