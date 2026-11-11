import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'dodger/main_game.dart';

import 'package:dodger/ui/control_panel.dart';

void main() {
  final game = Dodger();

  runApp(
    MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;

            return Stack(
              children: [
                GameWidget(game: game),

                if (isMobile)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ControlPanel(
                      onRightDown: game.startMovingRight,
                      onRightUp: game.stopMovingRight,
                      onLeftDown: game.startMovingLeft,
                      onLeftUp: game.stopMovingLeft,
                      onUpDown: game.startMovingUp,
                      onUpUp: game.stopMovingUp,
                      onDownDown: game.startMovingDown,
                      onDownUp: game.stopMovingDown,
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    ),
  );
}
