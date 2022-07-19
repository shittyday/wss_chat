import 'package:flutter/material.dart';

class FilledContainer extends CustomPainter {
  const FilledContainer({required this.color});
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPaint(Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
