import 'package:flutter/material.dart';

import '../exports/export.dart';

class DialogCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = ThemeHelper.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.4000000, 0, size.height * 0.2000000);
    path0.cubicTo(
        size.width * -0.0093667,
        size.height * 0.1700000,
        size.width * 0.0750667,
        size.height * 0.1778750,
        size.width * 0.1025000,
        size.height * 0.1725000);
    path0.cubicTo(
        size.width * 0.1674000,
        size.height * 0.1604750,
        size.width * 0.2149333,
        size.height * 0.1204750,
        size.width * 0.2266667,
        size.height * 0.0747250);
    path0.cubicTo(
        size.width * 0.2298000,
        size.height * 0.0557750,
        size.width * 0.2216667,
        size.height * -0.0008500,
        size.width * 0.2666667,
        0);
    path0.quadraticBezierTo(
        size.width * 0.4500000, size.height * 0.0021187, size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
