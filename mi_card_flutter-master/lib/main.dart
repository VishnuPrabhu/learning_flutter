import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(LayoutChallenge());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    color: Colors.white,
                    child: Text('Container 1'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                    child: Text('Container 2'),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                    child: Text('Container 3'),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      color: Colors.white,
                      child: Text('Container 1'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.red,
                      child: Text('Container 2'),
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.blue,
                      child: Text('Container 3'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  )
                ],
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
