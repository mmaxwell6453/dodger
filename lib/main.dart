import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'dodger/main_game.dart';

import 'package:dodger/ui/control_panel.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;

            return Stack(
              children: [
                GameWidget(game: Dodger()),

                if (isMobile) const Align(child: ControlPanel()),
              ],
            );
          },
        ),
      ),
    ),
  );
}
