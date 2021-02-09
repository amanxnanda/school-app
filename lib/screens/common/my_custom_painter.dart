import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.quadraticBezierTo(0, size.height * 0.59, 0, size.height * 0.45);
    path_0.quadraticBezierTo(size.width * -0.00, size.height * 0.50,
        size.width * 0.07, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.71, size.height * 0.50,
        size.width * 0.93, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 1.00, size.height * 0.50, size.width, size.height * 0.55);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
