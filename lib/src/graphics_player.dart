library graphics_player;
 
 import 'objects.dart';
 import 'package:flutter/material.dart';
 import 'dart:ui';

class SnapshotPainter extends CustomPainter {
  // final List<Shape> shapeList;
  // final List<ForceVector> forceVectorList; // Will anything else changing in the snapshot affect redraw?
  final Snapshot snapshot;
  double stageWidth;
  double stageHeight; // ?

  SnapshotPainter(this.snapshot);

  @override
  void paint(Canvas canvas, Size size) {
    for(Circle circle in snapshot.shapeList){
      canvas.drawCircle(Offset(circle.locX, circle.locY), circle.radius, Paint());
    }
    // add code for rectangles, force vectors...
  }

  @override
  bool shouldRepaint(SnapshotPainter oldDelegate) => this.snapshot != oldDelegate.snapshot;

  // Picture drawSnapshot(Snapshot snapshot) {
  //   // draw a Picture using a Canvas, return picture??
  //   PictureRecorder recorder = PictureRecorder();
  //   Canvas c = Canvas(recorder);
    
  //   for(Circle circle in snapshot.shapeList){
  //     c.drawCircle(Offset(circle.locX, circle.locY), circle.radius, Paint());
  //   }

  //   return(recorder.endRecording());
  // }
}