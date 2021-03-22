import 'package:flutter/material.dart';
import 'package:flutterlessons/exercise/user.dart';
import 'package:flutterlessons/exercise/user_item.dart';

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
  final List<User> _users = List.generate(100, (int index) {
    return User(
      "Last Name $index",
      "First Name $index",
      "$index, rue du faubourg saint antoine",
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (BuildContext context, int index) {
            return UserItem(
              user: _users[index],
            );
          },
        ),
      ),
    );
  }
}
