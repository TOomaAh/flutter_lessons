import 'package:flutter/material.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Hello",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.airplanemode_active),
        title: Text("My Title"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("ok");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Today",
          ),
        ],
      ),
    );
  }
}
