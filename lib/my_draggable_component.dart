import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDraggableComponent extends SpriteComponent with DragCallbacks {
  MyDraggableComponent({super.size, super.sprite});
  // @override
  // NotifyingVector2 get position => super.position;

  // final _paint = Paint();
  bool _isDragged = false;
  //final effect = MoveByEffect(Vector2(0, -10), EffectController(duration: 0.5));

  @override
  void onDragStart(DragStartEvent event) => _isDragged = true;

  @override
  void onDragUpdate(DragUpdateEvent event) => position += event.delta;

  @override
  void onDragEnd(DragEndEvent event) => _isDragged = false;
}
