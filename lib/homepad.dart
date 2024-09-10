import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:catgame/gameworld.dart';

class Homepage extends FlameGame<Gameworld>
    with DragCallbacks, HasCollisionDetection {
  Homepage()
      : super(
          world: Gameworld(),
          camera: CameraComponent.withFixedResolution(width: 600, height: 1200),
        );

  @override
  Color backgroundColor() {
    return const Color.fromRGBO(178, 81, 235, 1);
  }

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    debugMode = true; // Enables debug mode for the entire game
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    // Update the position of the 'cutter' object in the game world when the user drags on the screen.
    world.cutter.move(event.deviceDelta);

    super.onDragUpdate(event);
  }
}
