import 'package:flame/game.dart';
import 'package:flame/input.dart';

import 'player/player.dart';

class Dodger extends FlameGame with HasKeyboardHandlerComponents {
  late final Player player;

  @override
  Future<void> onLoad() async {
    player = Player();
    add(player);
  }

  void startMovingRight() {
    player.movingRight = true;
  }

  void stopMovingRight() {
    player.movingRight = false;
  }

  void startMovingLeft() {
    player.movingLeft = true;
  }

  void stopMovingLeft() {
    player.movingLeft = false;
  }

  void startMovingUp() {
    player.movingUp = true;
  }

  void stopMovingUp() {
    player.movingUp = false;
  }

  void startMovingDown() {
    player.movingDown = true;
  }

  void stopMovingDown() {
    player.movingDown = false;
  }
}
