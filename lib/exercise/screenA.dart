import 'package:flutter/material.dart';

class screenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Text(
          "Hello",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
