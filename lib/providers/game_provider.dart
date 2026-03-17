import 'package:flutter/foundation.dart';

class GameProvider extends ChangeNotifier {
  // Add your game-related state and methods here
  String _gameState = 'initial';

  String get gameState => _gameState;

  void updateGameState(String newState) {
    _gameState = newState;
    notifyListeners();
  }
}
