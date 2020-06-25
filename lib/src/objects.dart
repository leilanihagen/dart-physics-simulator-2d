library objects;

import 'package:flutter/material.dart';

abstract class Shape {
  int id;
  String type;
  Color color;
  double mass;
  double locX;
  double locY;

  static int shapesCount = 0;

  Shape(this.type, this.color, this.mass, this.locX, this.locY){
    this.id = generateId();
  }

  static int generateId() {
    if (shapesCount == 0) {
      shapesCount = 1;
    }
    else {
      shapesCount++;
    }
    return shapesCount;
  }

  @override
  String toString(); // Abstract when missing body (implicit).

  int getId() {
  return this.id;
  }
  String getType() {
    return this.type;
  }
  Color getColor() {
    return this.color;
  }
  double getMass() {
    return this.mass;
  }
  double getLocX() {
    return this.locX;
  }
  double getLocY() {
    return this.locY;
  }
  void setType(String type) {
    this.type = type;
  }
  void setColor(Color color) {
    this.color = color;
  }
  void setMass(double mass) {
    this.mass = mass;
  }
  void setLocX(double locX) {
    this.locX = locX;
  }
  void setLocY(double locY) {
    this.locY = locY;
  }
}

class Circle extends Shape {
  double _radius;
  
}