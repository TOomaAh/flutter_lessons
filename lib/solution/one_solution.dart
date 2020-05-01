import 'package:flutter/material.dart';

void main() => runApp(MySolution());

class MySolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MagicSquare(),
      ),
    );
  }
}

class MagicSquare extends StatefulWidget {
  @override
  _MagicSquareState createState() => _MagicSquareState();
}

class _MagicSquareState extends State<MagicSquare> {
  Color color = Colors.amber;

  void _updateColor() {
    setState(() {
      color = color == Colors.amber ? Colors.pink : Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateColor,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
