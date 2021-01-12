import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ConfirmedCustomTag extends CustomPainter{

  final String text;

  const ConfirmedCustomTag({this.text});

  @override
  void paint(Canvas canvas, Size size) {
    final pointMode = ui.PointMode.polygon;
    var paint = Paint()..color = Colors.green..style = PaintingStyle.fill;

    /*Offset startingPoint = Offset(0, (size.height / 2) + 15);
    Offset endingPoint = Offset(size.width + 12, (size.height / 2) + 15);

    Offset startingPointEnd = Offset(0, (size.height / 2) - 20);

    final points = [
      startingPoint,
      endingPoint,
      Offset(80, 5),
      Offset(90, -12),
      startingPointEnd,
    ];

    canvas.drawPoints(pointMode, points, paint);*/

    var path = Path();
    path.lineTo(0, (size.height / 2) + 15);
    path.lineTo(size.width + 12, (size.height / 2) + 15);
    path.close();
    
    canvas.drawPath(path, paint);


    var paintCross = Paint()..color = Colors.green..strokeWidth = 1..strokeCap = StrokeCap.round..style = PaintingStyle.stroke;

    var path2 = Path();
    path2.moveTo(size.width + 12, (size.height / 2) + 15);
    path2.lineTo(80, 10);
    path2.moveTo(80, 10);
    path2.lineTo(90, -5);
    path2.close();

    canvas.drawPath(path2, paintCross);

    var path3 = Path();
    path3.moveTo(90, -5);
    path3.lineTo(0, (size.height / 2) - 14);
    path3.lineTo(0, (size.height / 2) + 15);
    path3.close();

    canvas.drawPath(path3, paint);

    /*Path path1 = Path();
    path1.lineTo(0, size.width / 2);
    path1.lineTo(size.width + 20, 0);

    canvas.drawPath(path1, paint);

    Path path2 = Path();
    path2.lineTo(0, size.height / 2);
    path2.lineTo(size.height + 20, 0);

    canvas.drawPath(path2, paint);*/

  }

  /*
    var path = Path();
    path.lineTo(10, 0);
    path.lineTo(0, 10);
    path.close();

    canvas.drawPath(path, paint);


    var path2 = Path();
    path2.lineo(-10, 0);
    path2.lineTo(0, -10);
    path2.close();

    canvas.drawPath(path2, paint);
    */

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}