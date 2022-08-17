import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class NetPlatform extends Component {
  Paint orangeColor = Paint()..color = Colors.deepOrange;
  Paint blueColor = Paint()..color = Colors.blue;
  double h = 900;
  double w = 500;
  @override
  void render(Canvas canvas) {
    // TODO: implement render
    //canvas.drawRect(Rect.fromLTWH(300, 400, 100, 10), orangeColor);
    //canvas.drawRect(Rect.fromLTWH(w, h, 10, 10), blueColor);
    canvas.drawRect(
        Rect.fromLTWH(0.45 * w, 0.2 * h, 0.1 * w, 0.003 * h), blueColor);
    canvas.drawRect(
        Rect.fromLTWH(0.6 * w, 0.3 * h, 0.1 * w, 0.003 * h), blueColor);
    canvas.drawRect(
        Rect.fromLTWH(0.35 * w, 0.4 * h, 0.2 * w, 0.003 * h), blueColor);
    canvas.drawRect(
        Rect.fromLTWH(0.2 * w, 0.6 * h, 0.15 * w, 0.003 * h), blueColor);
    canvas.drawRect(
        Rect.fromLTWH(0.55 * w, 0.75 * h, 0.15 * w, 0.003 * h), blueColor);
    canvas.drawRect(
        Rect.fromLTWH(0.4 * w, 0.85 * h, 0.15 * w, 0.003 * h), blueColor);
    super.render(canvas);
  }
}
