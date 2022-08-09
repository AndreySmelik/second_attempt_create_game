import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MyGame extends FlameGame {
  late final SpriteComponent orangeBlock;

  @override
  void render(Canvas canvas) {
    Color color = Color(0XFFFF0000);
    Paint enemyColor = Paint()..color = color;
    canvas.drawRect(Rect.fromLTWH(200, 400, 50, 50), enemyColor);
    canvas.drawRect(
        Rect.fromLTWH(201, 401, 48, 48), Paint()..color = Colors.black);
    super.render(canvas);
  }

  @override
  Future<void> onLoad() async {
    final sprite = await Sprite.load('orange_block.png');
    final size = Vector2.all(50.0);
    final orangeBlock = SpriteComponent(size: size, sprite: sprite);

    // screen coordinates
    orangeBlock.position = Vector2(100.0, 200.0);
    orangeBlock.angle = 0;
    add(orangeBlock); // Adds the component

    final square = RectangleComponent.square(
      position: Vector2.all(100),
      size: 200,
      paint: Paint()..color = Colors.yellow,
    );
    final emptySquare = RectangleComponent.fromRect(
      Rect.fromLTWH(10, 10, 100, 50),
    );
    add(emptySquare);
  }
}
