/*

  SceneStore
  ----------

  0: Settings
  1: Vehicle
  2: Telephony
  3: Audio
  4: Navigation

*/

import 'package:flutter/material.dart';

class SceneStore extends ChangeNotifier {
  // Start with navigation present
  int index = 4;

  bool isSelected(int testIndex) {
    return testIndex == index;
  }

  void setNewIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }

  /* Settings Scene */

  void showSettingsScene() {
    setNewIndex(0);
  }

  bool isSettingsScene() {
    return isSelected(0);
  }

  /* Vehicle Scene */

  void showVehicleScene() {
    setNewIndex(1);
  }

  bool isVehicleScene() {
    return isSelected(1);
  }

  /* Telephony Scene */

  void showTelephonyScene() {
    setNewIndex(2);
  }

  bool isTelephonyScene() {
    return isSelected(2);
  }

  /* Audio Scene */

  void showAudioScene() {
    setNewIndex(3);
  }

  bool isAudioScene() {
    return isSelected(3);
  }

  /* Navigation Scene */

  void showNavigationScene() {
    setNewIndex(4);
  }

  bool isNavigationScene() {
    return isSelected(4);
  }
}
