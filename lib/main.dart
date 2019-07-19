import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Target',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Target(),
    );
  }
}

class Target extends StatelessWidget {
  final N_CIRCLES = 7;
  final CIRCLE_DIAMETER = 50;
  Widget drawCircle(int i) {
    double diameter = CIRCLE_DIAMETER * i.toDouble();
    return Center(
      child: Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
            color: i.isOdd ? Colors.red : Colors.white, shape: BoxShape.circle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Stack(
          children: List.generate(N_CIRCLES, (index) {
            return drawCircle(N_CIRCLES - index);
          }),
        ),
      ),
    );
  }
}
