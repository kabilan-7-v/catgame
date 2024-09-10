import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Player extends SpriteComponent {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("Layer_1_01.png");
    size = Vector2.all(
      500,
    );
    position = Vector2(0, 0);
    anchor = Anchor.center;
    add(RectangleHitbox());
  }
}
