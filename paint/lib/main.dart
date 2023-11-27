import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Vẽ đường thẳng trong Flutter'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: MyPainter(),
        ),
      ),
    ),
  ));
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;

    final startPoint = Offset(50, 50);
    final endPoint = Offset(150, 150);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

