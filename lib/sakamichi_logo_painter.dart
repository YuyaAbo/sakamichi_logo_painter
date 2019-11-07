library sakamichi_logo_painter;

import 'package:flutter/material.dart';

class SakamichiLogo extends StatelessWidget {
  /// Size of widget [double].
  final double size;

  /// [Color] of foreground triangle.
  final Color foregroundColor;

  /// [Color] of background triangle.
  final Color backgroundColor;

  /// Draw [String] on foreground triangle.
  final String text;

  SakamichiLogo({
    @required this.size,
    @required this.foregroundColor,
    @required this.backgroundColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(size, size),
        painter: SakamichiLogoPainter(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          text: text,
        ),
      ),
    );
  }
}

/// 三角形を描く
class SakamichiLogoPainter extends CustomPainter {
  /// [Color] of foreground triangle.
  final Color foregroundColor;

  /// [Color] of background triangle.
  final Color backgroundColor;

  /// Draw [String] on foreground triangle.
  final String text;

  Paint _foregroundPaint;

  Paint _backgroundPaint;

  SakamichiLogoPainter({
    @required this.foregroundColor,
    @required this.backgroundColor,
    this.text,
  }) {
    _foregroundPaint = Paint()
      ..color = foregroundColor
      ..style = PaintingStyle.fill;
    _backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // draw background triangle
    var bPath = Path();
    bPath.moveTo(size.width, size.height * 0.07);
    bPath.lineTo(size.width, size.height);
    bPath.lineTo(size.width * 0.07, size.height);
    bPath.close();
    canvas.drawPath(bPath, _backgroundPaint);
    // draw white space
    Paint spacePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    var wPath = Path();
    wPath.moveTo(size.width * 0.93, 0);
    wPath.lineTo(size.width * 0.93, size.height * 0.93);
    wPath.lineTo(0, size.height * 0.93);
    wPath.close();
    canvas.drawPath(wPath, spacePaint);
    // draw foreground triangle
    var fPath = Path();
    fPath.moveTo(size.width * 0.9, 0);
    fPath.lineTo(size.width * 0.9, size.height * 0.9);
    fPath.lineTo(0, size.height * 0.9);
    print(fPath.getBounds());
    fPath.close();
    canvas.drawPath(fPath, _foregroundPaint);
    // draw text
    if (text != null) {
      final textSpan = TextSpan(
        text: text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w100,
          fontSize: size.width / 3.3,
        ),
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.start,
      );
      textPainter.layout(
        minWidth: 0,
        maxWidth: size.width * 0.9,
      );
      final offset = Offset((size.width * 0.9) - textPainter.width,
          size.height - textPainter.height);
      textPainter.paint(canvas, offset);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
