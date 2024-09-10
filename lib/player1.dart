import 'dart:async';

import 'package:catgame/homepad.dart';
import 'package:catgame/player.dart';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';

class Player1 extends SpriteComponent
    with HasGameRef<Homepage>, CollisionCallbacks {
  @override
  FutureOr<void> onLoad() async {
    final spriteImage = await Flame.images.load('Layer_1_00.png');
    final spriteSheet =
        SpriteSheet(image: spriteImage, srcSize: Vector2(256, 256));

    sprite = spriteSheet.getSprite(0, 0);

    size = Vector2.all(
      140,
    );
    position = Vector2(3, -120);
    anchor = Anchor.center;
    debugMode = true;
    add(RectangleHitbox());
  }

  // @override
  // void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
  //   if (other is Player1) {}
  //   other.removeFromParent();
  //   print("🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂🙂");
  //   super.onCollision(intersectionPoints, other);
  // }
}
