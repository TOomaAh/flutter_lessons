import 'package:flutter/material.dart';
import 'package:flutterlessons/exercise/screenA.dart';
import 'package:flutterlessons/exercise/screenB.dart';

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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  List<Widget> _screens = [
    screenA(),
    ScreenB(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_index],
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
        onTap: _onBottomBarClicked,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "today",
          ),
        ],
      ),
    );
  }

  void _onBottomBarClicked(int value) {
    _index = value;
    print("_index value = $_index");
    setState(() {});
  }
}
