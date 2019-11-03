import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sakamichi_logo_painter/sakamichi_logo_painter.dart';

void main() {
  test('set to color', () {
    final painter = SakamichiLogoPainter(
      foregroundColor: Colors.blue,
      backgroundColor: Colors.purple,
    );
    expect(painter.foregroundColor, Colors.blue);
    expect(painter.backgroundColor, Colors.purple);
  });
}
