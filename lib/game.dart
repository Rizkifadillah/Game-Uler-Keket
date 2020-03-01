import 'package:flutter/material.dart';

final Widget gameStartChild = Container(
  width: 320,
  height: 320,
  padding: const EdgeInsets.all(32),
  child: Center(
    child: Text(
      "Tap to start the Game!\nDo not Touch Walls:)",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
    ),
  ),
);

final Widget gameRunningChild = Container(
  width: 15.5,
  height: 15.5,
  decoration: new BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.purple,
          Colors.blueAccent,
        ]
    ),
    shape: BoxShape.rectangle,
  ),
);

final Widget newSnakePointInGame = Container(
  width: 15.5,
  height: 15.5,
  decoration: new BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.purple,
          Colors.blueAccent,
        ]
    ),
    border: new Border.all(color: Colors.white,width: 5),
    borderRadius: BorderRadius.circular(20),
  ),
);

//class which gives the snake HEAD
class Point {
  double x;
  double y;

  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }
}