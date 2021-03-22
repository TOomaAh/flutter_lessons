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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.amber;

  void _updateColor() {
    setState(() {
      color = color == Colors.amber ? Colors.pink : Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MagicSquare(
          color: color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: _updateColor,
      ),
    );
  }
}

class MagicSquare extends StatelessWidget {
  final Color color;

  const MagicSquare({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
