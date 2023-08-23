import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {

  // Boolean value for the current theme.
  bool isDarkMode = false;

  /// Updates the user selected theme and notifies the app state.
  /// [isDarkMode] Boolean value passed from switch event.
  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }
}