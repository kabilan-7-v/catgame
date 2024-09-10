import 'dart:async';

import 'package:catgame/homepad.dart';
import 'package:catgame/player.dart';
import 'package:catgame/player1.dart';
import 'package:catgame/player3.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Gameworld extends World with HasGameRef<Homepage>, CollisionCallbacks {
  late final Player nail;
  late final Player1 cathand;
  late final Player3 cutter;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    // Initialize components
    nail = Player();
    cathand = Player1();
    cutter = Player3();

    // Enable debug mode to see hitboxes
    nail.debugMode = true;
    cathand.debugMode = true;
    cutter.debugMode = true;

    // Add all components to the game world
    addAll([
      cathand,
      nail,
      cutter,
    ]);
  }
}
