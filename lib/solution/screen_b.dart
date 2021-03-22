import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  static const String routeName = "routeB";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Screen B"),
            ElevatedButton(
              child: Text("Go back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}