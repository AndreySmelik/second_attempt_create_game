import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class NetPlatform extends Component {
  Paint orangeColor = Paint()..color = Colors.deepOrange;

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    canvas.drawRect(Rect.fromLTWH(300, 400, 100, 10), orangeColor);
    super.render(canvas);
  }
}
