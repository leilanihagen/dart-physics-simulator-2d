library objects;

import 'package:flutter/material.dart';

abstract class Shape {
  int _id;
  String type;
  Color color;
  double mass;
  double locX;
  double locY;

  static int shapeCount = 0;

  Shape(this.type, this.color, this.mass, this.locX, this.locY){
    this._id = generateId();
  }

  static int generateId() {
    if (shapeCount == 0) {
      shapeCount = 1;
    }
    else {
      shapeCount++;
    }
    return shapeCount;
  }

  @override
  String toString(); // Abstract when missing body (implicit).

  int getId() {
    return this._id;
  }
}

class Circle extends Shape {
  double radius;
  
  Circle(Color color, double mass, double locX, double locY, this.radius)
  :super("circle", color, mass, locX, locY);

  @override
  String toString() {
    return "Shape, id=${super.getId()}, of type: ${super.type}, color: ${super.color}, mass: ${super.mass}, and radius: $radius at x=${super.locX} and y=${super.locY}.";
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(Color color, double mass, double locX, double locY, this.width, this.height)
  :super("rectangle", color, mass, locX, locY);

  @override
  String toString() {
    return "Shape, id=${super.getId()}, of type: ${super.type}, color: ${super.color}, mass: ${super.mass}, width: $width, and height: $height at x=${super.locX} and y=${super.locY}.";
  }
}

class ForceVector {
  int _id;
  double magnitude;
  double direction;
  double locX; // Location of point of application/head.
  double locY;

  static int vectorCount = 0;

  ForceVector(this.magnitude, this.direction, this.locX, this.locY){
    this._id = generateId();
  }

  static int generateId() {
    if (vectorCount == 0) {
      vectorCount = 1;
    }
    else {
      vectorCount++;
    }
    return vectorCount;
  }

  @override
  String toString() {
    return "Force vector, id=$_id of magnitude: $magnitude and direction: $direction applied at x=$locX, y=$locY.";
  }
  int getId() {
    return _id;
  }
}

class WorldStateSnapshot {
  double gravityMagnitude;
  double gravityDirection;
  double fluidDensity; // Default fluid of non-enclosed areas in snapshot.
  List<Shape> shapeList;
  List<ForceVector> forceVectorList;

  WorldStateSnapshot(this.gravityMagnitude, this.gravityDirection, this.fluidDensity) {
    this.shapeList = List<Shape>();
    this.forceVectorList = List<ForceVector>();
  }

  @override
  String toString() {
    return "Physics2d world-state Snapshot; contains ${shapeList.length} shapes, ${forceVectorList.length} force vectors. Magnitude of g=$gravityMagnitude, direction of g=$gravityDirection, density of surrounding fluid=$fluidDensity.";
  }
}