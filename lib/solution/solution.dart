import 'package:flutter/material.dart';
import 'package:flutterlessons/solution/screen_404.dart';
import 'package:flutterlessons/solution/screen_b.dart';
import 'package:flutterlessons/solution/screen_c.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: {
        "/": (BuildContext context) => Home(),
        ScreenB.routeName: (BuildContext context) => ScreenB(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final dynamic arguments = settings.arguments;
        switch (settings.name) {
          case ScreenC.routeName:
            int? identifier;
            if (arguments is int) {
              identifier = arguments;
            }
            return MaterialPageRoute(
              builder: (BuildContext context) => ScreenC(
                identifier: identifier ?? 0,
              ),
            );
            break;
          default:
            return MaterialPageRoute(builder: (BuildContext context) => Screen404());
            break;
        }
      },
    );
  }
}
