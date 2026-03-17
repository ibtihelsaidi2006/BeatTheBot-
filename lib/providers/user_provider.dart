import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  // Add your user-related state and methods here
  String _userName = 'Guest';

  String get userName => _userName;

  void setUserName(String name) {
    _userName = name;
    notifyListeners();
  }
}
