import 'package:flutter/material.dart';

class ControlPanel extends StatelessWidget {
  final VoidCallback onRightDown;
  final VoidCallback onRightUp;
  final VoidCallback onLeftDown;
  final VoidCallback onLeftUp;
  final VoidCallback onUpDown;
  final VoidCallback onUpUp;
  final VoidCallback onDownDown;
  final VoidCallback onDownUp;

  const ControlPanel({
    super.key,
    required this.onRightDown,
    required this.onRightUp,
    required this.onLeftDown,
    required this.onLeftUp,
    required this.onUpDown,
    required this.onUpUp,
    required this.onDownDown,
    required this.onDownUp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      decoration: const BoxDecoration(color: Color.fromARGB(221, 73, 95, 96)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTapDown: (_) => onUpDown(),
                    onTapUp: (_) => onUpUp(),
                    onTapCancel: onUpUp,
                    child: const Icon(
                      Icons.arrow_drop_up,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTapDown: (_) => onLeftDown(),
                        onTapUp: (_) => onLeftUp(),
                        onTapCancel: onLeftUp,
                        child: const Icon(
                          Icons.arrow_left,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      GestureDetector(
                        onTapDown: (_) => onRightDown(),
                        onTapUp: (_) => onRightUp(),
                        onTapCancel: onRightUp,
                        child: const Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTapDown: (_) => onDownDown(),
                    onTapUp: (_) => onDownUp(),
                    onTapCancel: onDownUp,
                    child: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),

              // Action buttons
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 22, 174, 95),
                      shape: BoxShape.circle,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "A",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 174, 22, 22),
                      shape: BoxShape.circle,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "B",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Menu", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
