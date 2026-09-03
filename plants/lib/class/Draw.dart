import 'package:flutter/material.dart';
import 'package:plants/class/constant/Appcolors.dart';
class TopWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.withOpacity(0.60)
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, size.height * 0.65);

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.45,
      size.width * 0.55,
      size.height * 0.62,
    );

    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.85,
      size.width,
      size.height * 0.55,
    );

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// الموجة السفلية
class BottomWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =Appcolors.green_fat
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, size.height * 0.50);

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.15,
      size.width * 0.50,
      size.height * 0.40,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.65,
      size.width,
      size.height * 0.30,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
