import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDraggableComponent extends PositionComponent with DragCallbacks {
  MyDraggableComponent({super.size});

  final _paint = Paint();
  bool _isDragged = false;

  @override
  void onDragStart(DragStartEvent event) => _isDragged = true;

  @override
  void onDragUpdate(DragUpdateEvent event) => position += event.delta;

  @override
  void onDragEnd(DragEndEvent event) => _isDragged = false;

  @override
  void render(Canvas canvas) {
    _paint.color = _isDragged ? Colors.red : Colors.white;
    canvas.drawRect(size.toRect(), _paint);
  }
}
