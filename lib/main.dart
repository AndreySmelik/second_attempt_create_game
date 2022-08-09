import 'my_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'custom_painter_example.dart';

void main() {
  final game = MyGame();
  final painter = CustomPainterExample();
  runApp(GameWidget(game: game));
}
