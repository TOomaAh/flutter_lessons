import 'package:flutter/cupertino.dart';
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
  final List<Widget> bullets = List.generate(30, (_) => Bullet());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: bullets,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      width: double.infinity,
                      height: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Bullet(),
                            SizedBox(width: 5,),
                            Bullet(),
                            Spacer(),
                            Bullet(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Bullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
