import 'package:catgame/homepad.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  final game = Homepage();
  runApp(GameWidget(
    game: game,
  ));
}
