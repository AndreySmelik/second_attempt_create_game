import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'net_platform.dart';

class MyGame extends FlameGame with HasTappables {
  late final SpriteComponent orangeBlock;
  Vector2 screenSize = new Vector2(0, 0);

  @override
  void handleResize(Vector2 size) {
    // TODO: implement handleResize
    screenSize = size;
    super.handleResize(size);
  }

  @override
  void onTapDown(int pointerId, TapDownInfo info) {
    // TODO: implement onTapDown
    int a = 0;
    Color color = Color(0XFFFF0000);
    Paint redColor = Paint()..color = color;
    print(info.eventPosition.global.x.toString());
    RectangleComponent rect = RectangleComponent.square(
      position: info.eventPosition.global,
      size: 20,
      paint: redColor,
    );
    add(rect);
    super.onTapDown(pointerId, info);
  }

  @override
  void render(Canvas canvas) {
    Color color = Color(0XFFFF0000);
    Paint redColor = Paint()..color = color;

    canvas.drawLine(Offset(0, 0), Offset(screenSize.x, 0), redColor);
    canvas.drawLine(
        Offset(screenSize.x, 0), Offset(screenSize.x, screenSize.y), redColor);
    canvas.drawLine(
        Offset(screenSize.x, screenSize.y), Offset(0, screenSize.y), redColor);
    canvas.drawLine(Offset(0, screenSize.y), Offset(0, 0), redColor);

    FpsComponent fpsCounter = new FpsComponent();

    TextPaint textPaint = TextPaint(
      style: TextStyle(
        fontSize: 20.0,
        fontFamily: 'Awesome Font',
      ),
    );
    // textPaint.render(canvas, 'fps: ' + fpsCounter.fps.toString(),
    //   Vector2(screenSize.x - 100, 20));
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
    // add(orangeBlock); // Adds the component

    final platform = new NetPlatform();
    add(platform);
  }
}
