import 'dart:async';

import 'package:catgame/homepad.dart';
import 'package:catgame/player.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Player3 extends SpriteComponent with HasGameRef<Homepage> {
  Player3() : super();
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("Cat Nail Cutter sprite.png");
    size = Vector2(288, 182);
    position = Vector2(100, -360);
    anchor = Anchor.center;

    // Enable debug mode to see the hitbox
    debugMode = true;

    // Add a rectangle hitbox for collision detection
    add(RectangleHitbox());
  }

  void move(Vector2 delt) {
    position += delt;
  }
}
