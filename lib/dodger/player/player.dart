import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Player extends CircleComponent with KeyboardHandler {
  Player()
    : super(
        radius: 25,
        position: Vector2(50, 200),
        paint: Paint()..color = Colors.blue,
      );

  double speed = 200;
  bool movingRight = false;
  bool movingLeft = false;
  bool movingUp = false;
  bool movingDown = false;

  @override
  void update(double dt) {
    super.update(dt);

    if (movingRight) {
      position.x += speed * dt;
    }
    if (movingLeft) {
      position.x -= speed * dt;
    }
    if (movingUp) {
      position.y -= speed * dt;
    }
    if (movingDown) {
      position.y += speed * dt;
    }
  }

  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    movingRight = keysPressed.contains(LogicalKeyboardKey.arrowRight);
    movingLeft = keysPressed.contains(LogicalKeyboardKey.arrowLeft);

    return false;
  }
}
