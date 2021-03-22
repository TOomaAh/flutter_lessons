import 'package:flutter/material.dart';
import 'package:flutterlessons/solution/screen_a.dart';
import 'package:flutterlessons/solution/screen_b.dart';
import 'package:flutterlessons/solution/screen_c.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text("Got to A"),
                onPressed: () => _goToA(context),
              ),
              ElevatedButton(
                child: Text("Got to B"),
                onPressed: () => _goTo(context, ScreenB.routeName),
              ),
              ElevatedButton(
                child: Text("Got to C"),
                onPressed: () => _goTo(context, ScreenC.routeName, argument: 42),
              ),
              ElevatedButton(
                child: Text("Got to 404"),
                onPressed: () => _goTo(context, "totoro"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToA(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => ScreenA(),
      ),
    );
  }

  void _goTo(BuildContext context, String name, {dynamic argument}) {
    Navigator.of(context).pushNamed(name, arguments: argument);
  }
}
