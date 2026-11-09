import 'package:flame/game.dart';
import 'package:flame/input.dart';

import 'player/player.dart';

class Dodger extends FlameGame with HasKeyboardHandlerComponents {
  @override
  Future<void> onLoad() async {
    await add(Player());
  }
}