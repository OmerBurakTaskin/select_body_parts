import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class MusclePathPainter extends CustomPainter {
  String pathData;
  bool isAcitve;
  Color activeColor;
  Color passiveColor;
  MusclePathPainter(
      {required this.pathData,
      required this.isAcitve,
      this.activeColor = Colors.red,
      this.passiveColor = Colors.white});
  @override
  void paint(Canvas canvas, Size size) {
    Path path = parseSvgPathData(pathData);
    path = path.transform(Matrix4.diagonal3Values(0.4, 0.4, 1.0).storage);

    // Ortalamak için x ve y eksenindeki offset değerlerini hesaplıyoruz
    Offset offset = Offset(
      (size.width - path.getBounds().width) / 2 - path.getBounds().left,
      (size.height - path.getBounds().height) / 2 - path.getBounds().top,
    );

    // Path'i merkezde tutmak için hesaplanan offset ile kaydırıyoruz
    path = path.shift(offset);

    final paint = Paint()
      ..color = isAcitve ? activeColor : passiveColor
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return (oldDelegate as MusclePathPainter).isAcitve != isAcitve ||
        (oldDelegate).pathData != pathData;
  }
}
