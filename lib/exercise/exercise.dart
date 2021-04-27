/// Learn how to run the App widget
/// In this lesson we are going to speak about:
/// * runApp method
/// * StatelessWidget
/// * Container
/// * MaterialApp
/// * InheritedWidget concept
/// * Theme
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
      theme: new ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.amber,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        child: new Text(
          "Hello",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
