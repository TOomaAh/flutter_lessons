import 'dart:io';

import 'package:flutter/material.dart';

/// Learn how to run use a Scaffold widget
/// In this lesson we are going to speak about:
/// * Scaffold
/// * BottomNavigationBar
/// * FloatingActionButton
/// * AppBAr

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ScaffoldDeclaration(),
    );
  }
}

class ScaffoldDeclaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: new Icon(Icons.add),
      ),
      appBar: new AppBar(
        leading: Icon(Icons.airplanemode_active),
        centerTitle: true,
        title: new Text("Lesson 2"),
      ),
      body: new Home(),
      bottomNavigationBar: new BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.today),
          label: "today",
        ),
      ]),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Hello",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
